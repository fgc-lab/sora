import 'dart:io';

import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:path/path.dart' as path;
import 'package:process_run/shell.dart';
import 'package:sora/domain/core/download_info.dart';
import 'package:sora/domain/core/download_status.dart';
import 'package:sora/domain/core/non_empty_string.dart';
import 'package:sora/domain/gallery_dl/gallery_dl_failure.dart';
import 'package:sora/domain/gallery_dl/i_gallery_dl_repository.dart';
import 'package:sora/domain/settings/settings.dart';
import 'package:sora/infrastructure/core/download_info_dto.dart';
import 'package:sora/infrastructure/core/drift_injectable_module.dart';
import 'package:sora/utils/paths.dart';
import 'package:sora/utils/urls.dart';
import 'package:url_launcher/url_launcher.dart';

@LazySingleton(as: IGalleryDLRepository)
class DriftGalleryDLRepository implements IGalleryDLRepository {
  DriftGalleryDLRepository(this._drift);

  final DriftSoraDatabase _drift;

  @override
  Future<Result<Unit, GalleryDLFailure>> checkGalleryDLInstallation() async {
    try {
      final galleryDL = await which('gallery-dl');

      if (galleryDL == null) {
        return const Err(GalleryDLFailure.commandNotFound());
      }

      return const Ok(unit);
    } on Exception catch (_) {
      return const Err(GalleryDLFailure.unexpected());
    }
  }

  @override
  Future<Result<DownloadInfo, GalleryDLFailure>> download(
    DownloadInfo downloadInfo,
  ) async {
    try {
      final url = downloadInfo.url.getOrCrash();

      String? folder = '';
      if (downloadInfo.folder != null) {
        folder = downloadInfo.folder?.getOrCrash();
      }

      final homeDir = Platform.environment['HOME'] ?? '';

      final params = [
        if (folder != null && folder.isNotEmpty) ...[
          '-D',
          path.join(homeDir, 'gallery-dl', folder),
        ],
        url,
      ];

      final process = await Process.run(
        'gallery-dl',
        params,
        environment: {'HOME': homeDir},
        workingDirectory: homeDir,
      );

      if (process.exitCode != 0) {
        return Err(
          GalleryDLFailure.unexpected(
            downloadInfo: downloadInfo.copyWith(
              status: DownloadStatus.failure,
              message: NonEmptyString(process.stderr.toString().trim()),
            ),
          ),
        );
      }

      return Ok(
        downloadInfo.copyWith(
          status: DownloadStatus.success,
          message: NonEmptyString(process.stdout.toString().trim()),
        ),
      );
    } on Exception catch (e) {
      return Err(
        GalleryDLFailure.unexpected(
          downloadInfo: downloadInfo.copyWith(
            status: DownloadStatus.failure,
            message: NonEmptyString(e.toString().trim()),
          ),
        ),
      );
    }
  }

  @override
  Stream<Result<DownloadInfo, GalleryDLFailure>> batchDownload(
    List<DownloadInfo> downloadInfos,
  ) {
    final stream = Stream.fromFutures([
      for (final info in downloadInfos) download(info),
    ]);

    return stream;
  }

  @override
  Future<Result<Unit, GalleryDLFailure>> launchGithubURL() async {
    try {
      final result = await launchUrl(Uri.parse(URLs.galleryDLGithub));

      if (result) {
        return const Ok(unit);
      }

      return const Err(GalleryDLFailure.githubURLFailedToOpen());
    } on Exception catch (_) {
      return const Err(GalleryDLFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, GalleryDLFailure>> insertDownloadInfo(
    DownloadInfo downloadInfo,
  ) async {
    try {
      final url = downloadInfo.url.getOrCrash();

      final folder = downloadInfo.folder?.getOrCrash();

      await _drift
          .into(_drift.driftDownloadInfo)
          .insert(
            DriftDownloadInfoCompanion.insert(
              url: url,
              folder: Value(folder),
              updatedAt: Value(downloadInfo.updatedAt ?? DateTime.now()),
            ),
          );

      return const Ok(unit);
    } on Exception catch (_) {
      return const Err(GalleryDLFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, GalleryDLFailure>> checkForDuplicate(
    DownloadInfo downloadInfo,
  ) async {
    try {
      final url = downloadInfo.url.getOrNull();

      if (url == null) {
        return Err(GalleryDLFailure.invalidURL(downloadInfo));
      }

      final result =
          await (_drift.select(_drift.driftDownloadInfo)
            ..where((info) => info.url.equals(url))).get();

      if (result.isNotEmpty) {
        final newDownloadInfo = downloadInfo.copyWith(isDuplicate: true);

        return Err(GalleryDLFailure.contenAlreadyDownloaded(newDownloadInfo));
      }

      return const Ok(unit);
    } on Exception catch (_) {
      return const Err(GalleryDLFailure.unexpected());
    }
  }

  @override
  Future<Result<int, GalleryDLFailure>> countArchivesItems() async {
    try {
      final count = await _drift.driftDownloadInfo.count().getSingle();

      return Ok(count);
    } on Exception catch (_) {
      return const Err(GalleryDLFailure.unexpected());
    }
  }

  @override
  Future<Result<List<DownloadInfo>, GalleryDLFailure>> fetchArchives(
    int limit, {
    int? offset,
  }) async {
    try {
      final query =
          _drift.select(_drift.driftDownloadInfo)
            ..orderBy([(o) => OrderingTerm.desc(o.updatedAt)])
            ..limit(limit, offset: offset);

      final result = await query.get();

      return Ok(
        result
            .map((info) => DownloadInfoDTO.fromAdapter(info).toDomain())
            .toList(),
      );
    } on Exception catch (_) {
      return const Err(GalleryDLFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, GalleryDLFailure>> launchContentURL(
    DownloadInfo downloadInfo,
  ) async {
    try {
      final result = await launchUrl(Uri.parse(downloadInfo.url.getOrCrash()));

      if (result) {
        return const Ok(unit);
      }

      return const Err(GalleryDLFailure.contentURLFailedToOpen());
    } on Exception catch (e) {
      return Err(
        GalleryDLFailure.unexpected(
          downloadInfo: downloadInfo.copyWith(
            message: NonEmptyString(e.toString().trim()),
          ),
        ),
      );
    }
  }

  @override
  Future<Result<Settings, GalleryDLFailure>> fetchConfig(
    Settings settings,
  ) async {
    try {
      final configPaths = switch (Platform.operatingSystem) {
        'linux' || 'macos' => Paths.galleryDLOtherConfigPaths,
        'windows' => Paths.galleryDLWindowsConfigPaths,
        _ => <String>[],
      };

      if (configPaths.isEmpty) {
        return const Err(GalleryDLFailure.unexpected());
      }

      return Ok(settings);
    } on Exception catch (_) {
      return const Err(GalleryDLFailure.configNotFound());
    }
  }
}

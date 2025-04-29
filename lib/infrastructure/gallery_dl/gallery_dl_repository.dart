import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:path/path.dart' as path;
import 'package:process_run/shell.dart';
import 'package:sora/domain/core/download_info.dart';
import 'package:sora/domain/core/download_status.dart';
import 'package:sora/domain/core/non_empty_string.dart';
import 'package:sora/domain/gallery_dl/gallery_dl_failure.dart';
import 'package:sora/domain/gallery_dl/i_gallery_dl_repository.dart';

@LazySingleton(as: IGalleryDLRepository)
class GalleryDLRepository implements IGalleryDLRepository {
  @override
  Future<Result<Unit, GalleryDLFailure>> checkGalleryDLInstallation() async {
    try {
      final galleryDL = await which('gallery-dl');

      if (galleryDL == null) {
        return const Err(GalleryDLFailure.galleryDLNotFound());
      }

      return const Ok(unit);
    } catch (e) {
      return const Err(GalleryDLFailure.unexpected());
    }
  }

  @override
  Future<Result<DownloadInfo, GalleryDLFailure>> download(
    DownloadInfo downloadInfo,
  ) async {
    try {
      final url = downloadInfo.url.getOrCrash();

      if (url == null || url.isEmpty) {
        return Err(
          GalleryDLFailure.invalidURL(
            downloadInfo.copyWith(
              status: DownloadStatus.failure,
              message: NonEmptyString('Invalid URL. Empty string.'),
            ),
          ),
        );
      }

      String? folder = '';
      if (downloadInfo.folder != null) {
        folder = downloadInfo.folder?.getOrCrash();
      }

      final homeDir = Platform.environment['HOME'] ?? '';

      final process = await Process.run(
        'gallery-dl',
        [
          if (folder != null && folder.isNotEmpty) ...[
            '-D',
            path.join(homeDir, 'gallery-dl', folder),
          ],
          url,
        ],
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
    } catch (e) {
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
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sora/domain/core/download_info.dart';

part 'gallery_dl_failure.freezed.dart';

@freezed
sealed class GalleryDLFailure with _$GalleryDLFailure {
  const factory GalleryDLFailure.commandNotFound() = GalleryDLCommandNotFound;

  const factory GalleryDLFailure.githubURLFailedToOpen() =
      GalleryDLGithubURLFailedToOpen;

  const factory GalleryDLFailure.contenAlreadyDownloaded(
    DownloadInfo downloadInfo,
  ) = GalleryDLContentAlreadyDownloaded;

  const factory GalleryDLFailure.contentURLFailedToOpen() =
      GalleryDLContentURLFailedToOpen;

  const factory GalleryDLFailure.invalidURL(DownloadInfo downloadInfo) =
      GalleryDLInvalidURL;

  const factory GalleryDLFailure.configNotFound() = GalleryDLConfigNotFound;

  const factory GalleryDLFailure.unexpected({DownloadInfo? downloadInfo}) =
      GalleryDLUnexpected;
}

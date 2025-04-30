import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sora/domain/core/download_info.dart';

part 'gallery_dl_failure.freezed.dart';

@freezed
sealed class GalleryDLFailure with _$GalleryDLFailure {
  const factory GalleryDLFailure.notFound() = GalleryDLNotFound;

  const factory GalleryDLFailure.githubLinkFailedToOpen() =
      GalleryDLGithubLinkFailedToOpen;

  const factory GalleryDLFailure.alreadyExist(DownloadInfo downloadInfo) =
      DownloadInfoAlreadyExist;

  const factory GalleryDLFailure.invalidURL(DownloadInfo downloadInfo) =
      InvalidURL;

  const factory GalleryDLFailure.unexpected({DownloadInfo? downloadInfo}) =
      Unexpected;
}

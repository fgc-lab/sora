part of 'downloads_bloc.dart';

@freezed
class DownloadsEvent with _$DownloadsEvent {
  const factory DownloadsEvent.init() = Init;

  const factory DownloadsEvent.galleryDLFound() = _GalleryDLFound;

  const factory DownloadsEvent.addURLButtonPressed() = AddURLButtonPressed;

  const factory DownloadsEvent.urlChanged(UniqueID uid, String url) =
      URLChanged;

  const factory DownloadsEvent.folderChanged(UniqueID uid, String folder) =
      FolderChanged;

  const factory DownloadsEvent.singleDownloadButtonPressed(UniqueID uid) =
      SingleDownloadButtonPressed;

  const factory DownloadsEvent.batchDownloadButtonPressed() =
      BatchDownloadButtonPressed;

  const factory DownloadsEvent.clearButtonPressed(UniqueID uid) =
      ClearButtonPressed;

  const factory DownloadsEvent.batchClearButtonPressed() =
      BatchClearButtonPressed;

  const factory DownloadsEvent.downloadSucceeded(DownloadInfo downloadInfo) =
      _DownloadSucceeded;

  const factory DownloadsEvent.downloadFailed(GalleryDLFailure failure) =
      _DownloadFailed;

  const factory DownloadsEvent.galleryDLURLPressed() = GalleryDLURLPressed;
}

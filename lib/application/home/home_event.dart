part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = Init;

  const factory HomeEvent.addURLButtonPressed() = AddURLButtonPressed;

  const factory HomeEvent.urlChanged(UniqueID uid, String url) = URLChanged;

  const factory HomeEvent.folderChanged(UniqueID uid, String folder) =
      FolderChanged;

  const factory HomeEvent.singleDownloadButtonPressed(UniqueID uid) =
      SingleDownloadButtonPressed;

  const factory HomeEvent.batchDownloadButtonPressed() =
      BatchDownloadButtonPressed;

  const factory HomeEvent.clearButtonPressed(UniqueID uid) = ClearButtonPressed;

  const factory HomeEvent.batchClearButtonPressed() = BatchClearButtonPressed;

  const factory HomeEvent.downloadSucceeded(DownloadInfo downloadInfo) =
      DownloadSucceeded;

  const factory HomeEvent.downloadFailed(GalleryDLFailure failure) =
      DownloadFailed;
}

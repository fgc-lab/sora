part of 'downloads_bloc.dart';

@freezed
sealed class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required Option<Result<Unit, CoreFailure>> failureOrOption,
    required List<DownloadInfo> downloadInfos,
  }) = _DownloadsState;

  factory DownloadsState.initial() =>
      const DownloadsState(failureOrOption: None(), downloadInfos: []);
}

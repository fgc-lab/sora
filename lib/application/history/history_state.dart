part of 'history_bloc.dart';

@freezed
sealed class HistoryState with _$HistoryState {
  const factory HistoryState({
    required Option<Result<Unit, CoreFailure>> failureOrOption,
    required List<DownloadInfo> downloadInfos,
    required int itemsCount,
    required int paginationIdx,
  }) = _HistoryState;

  factory HistoryState.initial() => const HistoryState(
    failureOrOption: None(),
    downloadInfos: [],
    itemsCount: 0,
    paginationIdx: 0,
  );
}

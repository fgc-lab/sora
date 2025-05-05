part of 'archives_bloc.dart';

@freezed
sealed class ArchivesState with _$ArchivesState {
  const factory ArchivesState({
    required Option<Result<Unit, CoreFailure>> failureOrOption,
    required List<DownloadInfo> downloadInfos,
    required int itemsCount,
    required int paginationIdx,
  }) = _ArchivesState;

  factory ArchivesState.initial() => const ArchivesState(
    failureOrOption: None(),
    downloadInfos: [],
    itemsCount: 0,
    paginationIdx: 0,
  );
}

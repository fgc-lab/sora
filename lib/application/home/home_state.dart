part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    required Option<Result<Unit, CoreFailure>> failureOrOption,
    required List<DownloadInfo> downloadInfos,
  }) = _HomeState;

  factory HomeState.initial() =>
      const HomeState(failureOrOption: None(), downloadInfos: []);
}

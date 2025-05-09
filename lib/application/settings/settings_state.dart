part of 'settings_bloc.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState({
    required Option<Result<Unit, CoreFailure>> failureOrOption,
    required Settings settings,
  }) = _SettingsState;

  factory SettingsState.initial() =>
      SettingsState(failureOrOption: const None(), settings: Settings.empty());
}

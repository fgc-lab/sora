part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.init() = Init;

  const factory SettingsEvent.settingsFound(Settings settings) = _SettingsFound;

  const factory SettingsEvent.settingsNotFound() = _SettingsNotFound;
}

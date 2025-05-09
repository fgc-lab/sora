import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_failure.freezed.dart';

@freezed
sealed class SettingsFailure with _$SettingsFailure {
  const factory SettingsFailure.notFound() = SettingsNotFound;

  const factory SettingsFailure.unexpected() = SettingsUnexpected;
}

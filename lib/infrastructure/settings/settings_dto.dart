import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sora/domain/core/unique_id.dart';
import 'package:sora/domain/settings/settings.dart';
import 'package:sora/infrastructure/core/drift_injectable_module.dart';

part 'settings_dto.freezed.dart';
part 'settings_dto.g.dart';

@freezed
sealed class SettingsDTO with _$SettingsDTO {
  const factory SettingsDTO({
    required int id,
    required Map<String, dynamic> config,
    required bool darkMode,
    DateTime? updatedAt,
  }) = _SettingsDTO;

  factory SettingsDTO.fromDomain(Settings settings) {
    return SettingsDTO(
      id: int.tryParse(settings.uid.getOrCrash()) ?? 1,
      config: settings.config,
      darkMode: settings.darkMode,
      updatedAt: settings.updatedAt,
    );
  }

  factory SettingsDTO.fromAdapter(DriftSetting settings) {
    return SettingsDTO(
      id: settings.id,
      config: jsonDecode(settings.config) as Map<String, dynamic>,
      darkMode: settings.darkMode,
      updatedAt: settings.updatedAt,
    );
  }

  factory SettingsDTO.fromJson(Map<String, dynamic>? json) =>
      _$SettingsDTOFromJson(json ?? {});
}

extension SettingsDTOX on SettingsDTO {
  Settings toDomain() => Settings(
    uid: UniqueID.fromUniqueString('$id'),
    config: config,
    darkMode: darkMode,
    updatedAt: updatedAt,
  );

  DriftSetting toAdapter() => DriftSetting(
    id: id,
    config: jsonEncode(config),
    darkMode: darkMode,
    updatedAt: updatedAt ?? DateTime.now(),
  );

  Map<String, dynamic> toMap() => <String, dynamic>{
    'id': id,
    'config': config,
    'darkMode': darkMode,
    'updatedAt': updatedAt,
  };
}

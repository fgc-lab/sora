// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SettingsDTO _$SettingsDTOFromJson(Map<String, dynamic> json) => _SettingsDTO(
  id: (json['id'] as num).toInt(),
  config: json['config'] as Map<String, dynamic>,
  darkMode: json['darkMode'] as bool,
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$SettingsDTOToJson(_SettingsDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'config': instance.config,
      'darkMode': instance.darkMode,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

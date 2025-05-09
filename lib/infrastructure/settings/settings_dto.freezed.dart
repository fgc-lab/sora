// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsDTO {

 int get id; Map<String, dynamic> get config; bool get darkMode; DateTime? get updatedAt;
/// Create a copy of SettingsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsDTOCopyWith<SettingsDTO> get copyWith => _$SettingsDTOCopyWithImpl<SettingsDTO>(this as SettingsDTO, _$identity);

  /// Serializes this SettingsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsDTO&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.config, config)&&(identical(other.darkMode, darkMode) || other.darkMode == darkMode)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(config),darkMode,updatedAt);

@override
String toString() {
  return 'SettingsDTO(id: $id, config: $config, darkMode: $darkMode, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SettingsDTOCopyWith<$Res>  {
  factory $SettingsDTOCopyWith(SettingsDTO value, $Res Function(SettingsDTO) _then) = _$SettingsDTOCopyWithImpl;
@useResult
$Res call({
 int id, Map<String, dynamic> config, bool darkMode, DateTime? updatedAt
});




}
/// @nodoc
class _$SettingsDTOCopyWithImpl<$Res>
    implements $SettingsDTOCopyWith<$Res> {
  _$SettingsDTOCopyWithImpl(this._self, this._then);

  final SettingsDTO _self;
  final $Res Function(SettingsDTO) _then;

/// Create a copy of SettingsDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? config = null,Object? darkMode = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,config: null == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,darkMode: null == darkMode ? _self.darkMode : darkMode // ignore: cast_nullable_to_non_nullable
as bool,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SettingsDTO implements SettingsDTO {
  const _SettingsDTO({required this.id, required final  Map<String, dynamic> config, required this.darkMode, this.updatedAt}): _config = config;
  factory _SettingsDTO.fromJson(Map<String, dynamic> json) => _$SettingsDTOFromJson(json);

@override final  int id;
 final  Map<String, dynamic> _config;
@override Map<String, dynamic> get config {
  if (_config is EqualUnmodifiableMapView) return _config;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_config);
}

@override final  bool darkMode;
@override final  DateTime? updatedAt;

/// Create a copy of SettingsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsDTOCopyWith<_SettingsDTO> get copyWith => __$SettingsDTOCopyWithImpl<_SettingsDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsDTO&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._config, _config)&&(identical(other.darkMode, darkMode) || other.darkMode == darkMode)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_config),darkMode,updatedAt);

@override
String toString() {
  return 'SettingsDTO(id: $id, config: $config, darkMode: $darkMode, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SettingsDTOCopyWith<$Res> implements $SettingsDTOCopyWith<$Res> {
  factory _$SettingsDTOCopyWith(_SettingsDTO value, $Res Function(_SettingsDTO) _then) = __$SettingsDTOCopyWithImpl;
@override @useResult
$Res call({
 int id, Map<String, dynamic> config, bool darkMode, DateTime? updatedAt
});




}
/// @nodoc
class __$SettingsDTOCopyWithImpl<$Res>
    implements _$SettingsDTOCopyWith<$Res> {
  __$SettingsDTOCopyWithImpl(this._self, this._then);

  final _SettingsDTO _self;
  final $Res Function(_SettingsDTO) _then;

/// Create a copy of SettingsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? config = null,Object? darkMode = null,Object? updatedAt = freezed,}) {
  return _then(_SettingsDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,config: null == config ? _self._config : config // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,darkMode: null == darkMode ? _self.darkMode : darkMode // ignore: cast_nullable_to_non_nullable
as bool,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

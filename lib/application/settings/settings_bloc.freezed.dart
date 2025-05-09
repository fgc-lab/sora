// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent()';
}


}

/// @nodoc
class $SettingsEventCopyWith<$Res>  {
$SettingsEventCopyWith(SettingsEvent _, $Res Function(SettingsEvent) __);
}


/// @nodoc


class Init implements SettingsEvent {
  const Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.init()';
}


}




/// @nodoc


class _SettingsFound implements SettingsEvent {
  const _SettingsFound(this.settings);
  

 final  Settings settings;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsFoundCopyWith<_SettingsFound> get copyWith => __$SettingsFoundCopyWithImpl<_SettingsFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsFound&&(identical(other.settings, settings) || other.settings == settings));
}


@override
int get hashCode => Object.hash(runtimeType,settings);

@override
String toString() {
  return 'SettingsEvent.settingsFound(settings: $settings)';
}


}

/// @nodoc
abstract mixin class _$SettingsFoundCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$SettingsFoundCopyWith(_SettingsFound value, $Res Function(_SettingsFound) _then) = __$SettingsFoundCopyWithImpl;
@useResult
$Res call({
 Settings settings
});


$SettingsCopyWith<$Res> get settings;

}
/// @nodoc
class __$SettingsFoundCopyWithImpl<$Res>
    implements _$SettingsFoundCopyWith<$Res> {
  __$SettingsFoundCopyWithImpl(this._self, this._then);

  final _SettingsFound _self;
  final $Res Function(_SettingsFound) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? settings = null,}) {
  return _then(_SettingsFound(
null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as Settings,
  ));
}

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsCopyWith<$Res> get settings {
  
  return $SettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}

/// @nodoc


class _SettingsNotFound implements SettingsEvent {
  const _SettingsNotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsNotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.settingsNotFound()';
}


}




/// @nodoc
mixin _$SettingsState {

 Option<Result<Unit, CoreFailure>> get failureOrOption; Settings get settings;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&(identical(other.failureOrOption, failureOrOption) || other.failureOrOption == failureOrOption)&&(identical(other.settings, settings) || other.settings == settings));
}


@override
int get hashCode => Object.hash(runtimeType,failureOrOption,settings);

@override
String toString() {
  return 'SettingsState(failureOrOption: $failureOrOption, settings: $settings)';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 Option<Result<Unit, CoreFailure>> failureOrOption, Settings settings
});


$SettingsCopyWith<$Res> get settings;

}
/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? failureOrOption = null,Object? settings = null,}) {
  return _then(_self.copyWith(
failureOrOption: null == failureOrOption ? _self.failureOrOption : failureOrOption // ignore: cast_nullable_to_non_nullable
as Option<Result<Unit, CoreFailure>>,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as Settings,
  ));
}
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsCopyWith<$Res> get settings {
  
  return $SettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// @nodoc


class _SettingsState implements SettingsState {
  const _SettingsState({required this.failureOrOption, required this.settings});
  

@override final  Option<Result<Unit, CoreFailure>> failureOrOption;
@override final  Settings settings;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsStateCopyWith<_SettingsState> get copyWith => __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState&&(identical(other.failureOrOption, failureOrOption) || other.failureOrOption == failureOrOption)&&(identical(other.settings, settings) || other.settings == settings));
}


@override
int get hashCode => Object.hash(runtimeType,failureOrOption,settings);

@override
String toString() {
  return 'SettingsState(failureOrOption: $failureOrOption, settings: $settings)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 Option<Result<Unit, CoreFailure>> failureOrOption, Settings settings
});


@override $SettingsCopyWith<$Res> get settings;

}
/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failureOrOption = null,Object? settings = null,}) {
  return _then(_SettingsState(
failureOrOption: null == failureOrOption ? _self.failureOrOption : failureOrOption // ignore: cast_nullable_to_non_nullable
as Option<Result<Unit, CoreFailure>>,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as Settings,
  ));
}

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsCopyWith<$Res> get settings {
  
  return $SettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}

// dart format on

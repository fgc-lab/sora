// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardState {

 bool get isDrawerExpanded; bool get useListTiles;
/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStateCopyWith<DashboardState> get copyWith => _$DashboardStateCopyWithImpl<DashboardState>(this as DashboardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardState&&(identical(other.isDrawerExpanded, isDrawerExpanded) || other.isDrawerExpanded == isDrawerExpanded)&&(identical(other.useListTiles, useListTiles) || other.useListTiles == useListTiles));
}


@override
int get hashCode => Object.hash(runtimeType,isDrawerExpanded,useListTiles);

@override
String toString() {
  return 'DashboardState(isDrawerExpanded: $isDrawerExpanded, useListTiles: $useListTiles)';
}


}

/// @nodoc
abstract mixin class $DashboardStateCopyWith<$Res>  {
  factory $DashboardStateCopyWith(DashboardState value, $Res Function(DashboardState) _then) = _$DashboardStateCopyWithImpl;
@useResult
$Res call({
 bool isDrawerExpanded, bool useListTiles
});




}
/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._self, this._then);

  final DashboardState _self;
  final $Res Function(DashboardState) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isDrawerExpanded = null,Object? useListTiles = null,}) {
  return _then(_self.copyWith(
isDrawerExpanded: null == isDrawerExpanded ? _self.isDrawerExpanded : isDrawerExpanded // ignore: cast_nullable_to_non_nullable
as bool,useListTiles: null == useListTiles ? _self.useListTiles : useListTiles // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _DashboardState implements DashboardState {
  const _DashboardState({this.isDrawerExpanded = false, this.useListTiles = false});
  

@override@JsonKey() final  bool isDrawerExpanded;
@override@JsonKey() final  bool useListTiles;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardStateCopyWith<_DashboardState> get copyWith => __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardState&&(identical(other.isDrawerExpanded, isDrawerExpanded) || other.isDrawerExpanded == isDrawerExpanded)&&(identical(other.useListTiles, useListTiles) || other.useListTiles == useListTiles));
}


@override
int get hashCode => Object.hash(runtimeType,isDrawerExpanded,useListTiles);

@override
String toString() {
  return 'DashboardState(isDrawerExpanded: $isDrawerExpanded, useListTiles: $useListTiles)';
}


}

/// @nodoc
abstract mixin class _$DashboardStateCopyWith<$Res> implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(_DashboardState value, $Res Function(_DashboardState) _then) = __$DashboardStateCopyWithImpl;
@override @useResult
$Res call({
 bool isDrawerExpanded, bool useListTiles
});




}
/// @nodoc
class __$DashboardStateCopyWithImpl<$Res>
    implements _$DashboardStateCopyWith<$Res> {
  __$DashboardStateCopyWithImpl(this._self, this._then);

  final _DashboardState _self;
  final $Res Function(_DashboardState) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isDrawerExpanded = null,Object? useListTiles = null,}) {
  return _then(_DashboardState(
isDrawerExpanded: null == isDrawerExpanded ? _self.isDrawerExpanded : isDrawerExpanded // ignore: cast_nullable_to_non_nullable
as bool,useListTiles: null == useListTiles ? _self.useListTiles : useListTiles // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

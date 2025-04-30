// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsEvent()';
}


}

/// @nodoc
class $DownloadsEventCopyWith<$Res>  {
$DownloadsEventCopyWith(DownloadsEvent _, $Res Function(DownloadsEvent) __);
}


/// @nodoc


class Init implements DownloadsEvent {
  const Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsEvent.init()';
}


}




/// @nodoc
mixin _$DownloadsState {

 Option<Result<Unit, CoreFailure>> get failureOrOption; List<DownloadInfo> get downloadInfos;
/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadsStateCopyWith<DownloadsState> get copyWith => _$DownloadsStateCopyWithImpl<DownloadsState>(this as DownloadsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadsState&&(identical(other.failureOrOption, failureOrOption) || other.failureOrOption == failureOrOption)&&const DeepCollectionEquality().equals(other.downloadInfos, downloadInfos));
}


@override
int get hashCode => Object.hash(runtimeType,failureOrOption,const DeepCollectionEquality().hash(downloadInfos));

@override
String toString() {
  return 'DownloadsState(failureOrOption: $failureOrOption, downloadInfos: $downloadInfos)';
}


}

/// @nodoc
abstract mixin class $DownloadsStateCopyWith<$Res>  {
  factory $DownloadsStateCopyWith(DownloadsState value, $Res Function(DownloadsState) _then) = _$DownloadsStateCopyWithImpl;
@useResult
$Res call({
 Option<Result<Unit, CoreFailure>> failureOrOption, List<DownloadInfo> downloadInfos
});




}
/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._self, this._then);

  final DownloadsState _self;
  final $Res Function(DownloadsState) _then;

/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? failureOrOption = null,Object? downloadInfos = null,}) {
  return _then(_self.copyWith(
failureOrOption: null == failureOrOption ? _self.failureOrOption : failureOrOption // ignore: cast_nullable_to_non_nullable
as Option<Result<Unit, CoreFailure>>,downloadInfos: null == downloadInfos ? _self.downloadInfos : downloadInfos // ignore: cast_nullable_to_non_nullable
as List<DownloadInfo>,
  ));
}

}


/// @nodoc


class _DownloadsState implements DownloadsState {
  const _DownloadsState({required this.failureOrOption, required final  List<DownloadInfo> downloadInfos}): _downloadInfos = downloadInfos;
  

@override final  Option<Result<Unit, CoreFailure>> failureOrOption;
 final  List<DownloadInfo> _downloadInfos;
@override List<DownloadInfo> get downloadInfos {
  if (_downloadInfos is EqualUnmodifiableListView) return _downloadInfos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_downloadInfos);
}


/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadsStateCopyWith<_DownloadsState> get copyWith => __$DownloadsStateCopyWithImpl<_DownloadsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadsState&&(identical(other.failureOrOption, failureOrOption) || other.failureOrOption == failureOrOption)&&const DeepCollectionEquality().equals(other._downloadInfos, _downloadInfos));
}


@override
int get hashCode => Object.hash(runtimeType,failureOrOption,const DeepCollectionEquality().hash(_downloadInfos));

@override
String toString() {
  return 'DownloadsState(failureOrOption: $failureOrOption, downloadInfos: $downloadInfos)';
}


}

/// @nodoc
abstract mixin class _$DownloadsStateCopyWith<$Res> implements $DownloadsStateCopyWith<$Res> {
  factory _$DownloadsStateCopyWith(_DownloadsState value, $Res Function(_DownloadsState) _then) = __$DownloadsStateCopyWithImpl;
@override @useResult
$Res call({
 Option<Result<Unit, CoreFailure>> failureOrOption, List<DownloadInfo> downloadInfos
});




}
/// @nodoc
class __$DownloadsStateCopyWithImpl<$Res>
    implements _$DownloadsStateCopyWith<$Res> {
  __$DownloadsStateCopyWithImpl(this._self, this._then);

  final _DownloadsState _self;
  final $Res Function(_DownloadsState) _then;

/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failureOrOption = null,Object? downloadInfos = null,}) {
  return _then(_DownloadsState(
failureOrOption: null == failureOrOption ? _self.failureOrOption : failureOrOption // ignore: cast_nullable_to_non_nullable
as Option<Result<Unit, CoreFailure>>,downloadInfos: null == downloadInfos ? _self._downloadInfos : downloadInfos // ignore: cast_nullable_to_non_nullable
as List<DownloadInfo>,
  ));
}


}

// dart format on

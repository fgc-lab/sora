// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryEvent()';
}


}

/// @nodoc
class $HistoryEventCopyWith<$Res>  {
$HistoryEventCopyWith(HistoryEvent _, $Res Function(HistoryEvent) __);
}


/// @nodoc


class Init implements HistoryEvent {
  const Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryEvent.init()';
}


}




/// @nodoc


class ItemsCounted implements HistoryEvent {
  const ItemsCounted(this.count);
  

 final  int count;

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsCountedCopyWith<ItemsCounted> get copyWith => _$ItemsCountedCopyWithImpl<ItemsCounted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsCounted&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'HistoryEvent.itemsCounted(count: $count)';
}


}

/// @nodoc
abstract mixin class $ItemsCountedCopyWith<$Res> implements $HistoryEventCopyWith<$Res> {
  factory $ItemsCountedCopyWith(ItemsCounted value, $Res Function(ItemsCounted) _then) = _$ItemsCountedCopyWithImpl;
@useResult
$Res call({
 int count
});




}
/// @nodoc
class _$ItemsCountedCopyWithImpl<$Res>
    implements $ItemsCountedCopyWith<$Res> {
  _$ItemsCountedCopyWithImpl(this._self, this._then);

  final ItemsCounted _self;
  final $Res Function(ItemsCounted) _then;

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(ItemsCounted(
null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class OpenInNewPressed implements HistoryEvent {
  const OpenInNewPressed(this.downloadInfo);
  

 final  DownloadInfo downloadInfo;

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenInNewPressedCopyWith<OpenInNewPressed> get copyWith => _$OpenInNewPressedCopyWithImpl<OpenInNewPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenInNewPressed&&(identical(other.downloadInfo, downloadInfo) || other.downloadInfo == downloadInfo));
}


@override
int get hashCode => Object.hash(runtimeType,downloadInfo);

@override
String toString() {
  return 'HistoryEvent.openInNewPressed(downloadInfo: $downloadInfo)';
}


}

/// @nodoc
abstract mixin class $OpenInNewPressedCopyWith<$Res> implements $HistoryEventCopyWith<$Res> {
  factory $OpenInNewPressedCopyWith(OpenInNewPressed value, $Res Function(OpenInNewPressed) _then) = _$OpenInNewPressedCopyWithImpl;
@useResult
$Res call({
 DownloadInfo downloadInfo
});


$DownloadInfoCopyWith<$Res> get downloadInfo;

}
/// @nodoc
class _$OpenInNewPressedCopyWithImpl<$Res>
    implements $OpenInNewPressedCopyWith<$Res> {
  _$OpenInNewPressedCopyWithImpl(this._self, this._then);

  final OpenInNewPressed _self;
  final $Res Function(OpenInNewPressed) _then;

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? downloadInfo = null,}) {
  return _then(OpenInNewPressed(
null == downloadInfo ? _self.downloadInfo : downloadInfo // ignore: cast_nullable_to_non_nullable
as DownloadInfo,
  ));
}

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DownloadInfoCopyWith<$Res> get downloadInfo {
  
  return $DownloadInfoCopyWith<$Res>(_self.downloadInfo, (value) {
    return _then(_self.copyWith(downloadInfo: value));
  });
}
}

/// @nodoc
mixin _$HistoryState {

 Option<Result<Unit, CoreFailure>> get failureOrOption; List<DownloadInfo> get downloadInfos; int get itemsCount; int get paginationIdx;
/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryStateCopyWith<HistoryState> get copyWith => _$HistoryStateCopyWithImpl<HistoryState>(this as HistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryState&&(identical(other.failureOrOption, failureOrOption) || other.failureOrOption == failureOrOption)&&const DeepCollectionEquality().equals(other.downloadInfos, downloadInfos)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount)&&(identical(other.paginationIdx, paginationIdx) || other.paginationIdx == paginationIdx));
}


@override
int get hashCode => Object.hash(runtimeType,failureOrOption,const DeepCollectionEquality().hash(downloadInfos),itemsCount,paginationIdx);

@override
String toString() {
  return 'HistoryState(failureOrOption: $failureOrOption, downloadInfos: $downloadInfos, itemsCount: $itemsCount, paginationIdx: $paginationIdx)';
}


}

/// @nodoc
abstract mixin class $HistoryStateCopyWith<$Res>  {
  factory $HistoryStateCopyWith(HistoryState value, $Res Function(HistoryState) _then) = _$HistoryStateCopyWithImpl;
@useResult
$Res call({
 Option<Result<Unit, CoreFailure>> failureOrOption, List<DownloadInfo> downloadInfos, int itemsCount, int paginationIdx
});




}
/// @nodoc
class _$HistoryStateCopyWithImpl<$Res>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._self, this._then);

  final HistoryState _self;
  final $Res Function(HistoryState) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? failureOrOption = null,Object? downloadInfos = null,Object? itemsCount = null,Object? paginationIdx = null,}) {
  return _then(_self.copyWith(
failureOrOption: null == failureOrOption ? _self.failureOrOption : failureOrOption // ignore: cast_nullable_to_non_nullable
as Option<Result<Unit, CoreFailure>>,downloadInfos: null == downloadInfos ? _self.downloadInfos : downloadInfos // ignore: cast_nullable_to_non_nullable
as List<DownloadInfo>,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,paginationIdx: null == paginationIdx ? _self.paginationIdx : paginationIdx // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _HistoryState implements HistoryState {
  const _HistoryState({required this.failureOrOption, required final  List<DownloadInfo> downloadInfos, required this.itemsCount, required this.paginationIdx}): _downloadInfos = downloadInfos;
  

@override final  Option<Result<Unit, CoreFailure>> failureOrOption;
 final  List<DownloadInfo> _downloadInfos;
@override List<DownloadInfo> get downloadInfos {
  if (_downloadInfos is EqualUnmodifiableListView) return _downloadInfos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_downloadInfos);
}

@override final  int itemsCount;
@override final  int paginationIdx;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryStateCopyWith<_HistoryState> get copyWith => __$HistoryStateCopyWithImpl<_HistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryState&&(identical(other.failureOrOption, failureOrOption) || other.failureOrOption == failureOrOption)&&const DeepCollectionEquality().equals(other._downloadInfos, _downloadInfos)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount)&&(identical(other.paginationIdx, paginationIdx) || other.paginationIdx == paginationIdx));
}


@override
int get hashCode => Object.hash(runtimeType,failureOrOption,const DeepCollectionEquality().hash(_downloadInfos),itemsCount,paginationIdx);

@override
String toString() {
  return 'HistoryState(failureOrOption: $failureOrOption, downloadInfos: $downloadInfos, itemsCount: $itemsCount, paginationIdx: $paginationIdx)';
}


}

/// @nodoc
abstract mixin class _$HistoryStateCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory _$HistoryStateCopyWith(_HistoryState value, $Res Function(_HistoryState) _then) = __$HistoryStateCopyWithImpl;
@override @useResult
$Res call({
 Option<Result<Unit, CoreFailure>> failureOrOption, List<DownloadInfo> downloadInfos, int itemsCount, int paginationIdx
});




}
/// @nodoc
class __$HistoryStateCopyWithImpl<$Res>
    implements _$HistoryStateCopyWith<$Res> {
  __$HistoryStateCopyWithImpl(this._self, this._then);

  final _HistoryState _self;
  final $Res Function(_HistoryState) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failureOrOption = null,Object? downloadInfos = null,Object? itemsCount = null,Object? paginationIdx = null,}) {
  return _then(_HistoryState(
failureOrOption: null == failureOrOption ? _self.failureOrOption : failureOrOption // ignore: cast_nullable_to_non_nullable
as Option<Result<Unit, CoreFailure>>,downloadInfos: null == downloadInfos ? _self._downloadInfos : downloadInfos // ignore: cast_nullable_to_non_nullable
as List<DownloadInfo>,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,paginationIdx: null == paginationIdx ? _self.paginationIdx : paginationIdx // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

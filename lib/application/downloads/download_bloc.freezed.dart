// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadEvent()';
}


}

/// @nodoc
class $DownloadEventCopyWith<$Res>  {
$DownloadEventCopyWith(DownloadEvent _, $Res Function(DownloadEvent) __);
}


/// @nodoc


class Init implements DownloadEvent {
  const Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadEvent.init()';
}


}




/// @nodoc


class GalleryDLFound implements DownloadEvent {
  const GalleryDLFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GalleryDLFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadEvent.galleryDLFound()';
}


}




/// @nodoc


class AddURLButtonPressed implements DownloadEvent {
  const AddURLButtonPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddURLButtonPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadEvent.addURLButtonPressed()';
}


}




/// @nodoc


class URLChanged implements DownloadEvent {
  const URLChanged(this.uid, this.url);
  

 final  UniqueID uid;
 final  String url;

/// Create a copy of DownloadEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$URLChangedCopyWith<URLChanged> get copyWith => _$URLChangedCopyWithImpl<URLChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is URLChanged&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,uid,url);

@override
String toString() {
  return 'DownloadEvent.urlChanged(uid: $uid, url: $url)';
}


}

/// @nodoc
abstract mixin class $URLChangedCopyWith<$Res> implements $DownloadEventCopyWith<$Res> {
  factory $URLChangedCopyWith(URLChanged value, $Res Function(URLChanged) _then) = _$URLChangedCopyWithImpl;
@useResult
$Res call({
 UniqueID uid, String url
});




}
/// @nodoc
class _$URLChangedCopyWithImpl<$Res>
    implements $URLChangedCopyWith<$Res> {
  _$URLChangedCopyWithImpl(this._self, this._then);

  final URLChanged _self;
  final $Res Function(URLChanged) _then;

/// Create a copy of DownloadEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? url = null,}) {
  return _then(URLChanged(
null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as UniqueID,null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FolderChanged implements DownloadEvent {
  const FolderChanged(this.uid, this.folder);
  

 final  UniqueID uid;
 final  String folder;

/// Create a copy of DownloadEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FolderChangedCopyWith<FolderChanged> get copyWith => _$FolderChangedCopyWithImpl<FolderChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FolderChanged&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.folder, folder) || other.folder == folder));
}


@override
int get hashCode => Object.hash(runtimeType,uid,folder);

@override
String toString() {
  return 'DownloadEvent.folderChanged(uid: $uid, folder: $folder)';
}


}

/// @nodoc
abstract mixin class $FolderChangedCopyWith<$Res> implements $DownloadEventCopyWith<$Res> {
  factory $FolderChangedCopyWith(FolderChanged value, $Res Function(FolderChanged) _then) = _$FolderChangedCopyWithImpl;
@useResult
$Res call({
 UniqueID uid, String folder
});




}
/// @nodoc
class _$FolderChangedCopyWithImpl<$Res>
    implements $FolderChangedCopyWith<$Res> {
  _$FolderChangedCopyWithImpl(this._self, this._then);

  final FolderChanged _self;
  final $Res Function(FolderChanged) _then;

/// Create a copy of DownloadEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? folder = null,}) {
  return _then(FolderChanged(
null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as UniqueID,null == folder ? _self.folder : folder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SingleDownloadButtonPressed implements DownloadEvent {
  const SingleDownloadButtonPressed(this.uid);
  

 final  UniqueID uid;

/// Create a copy of DownloadEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingleDownloadButtonPressedCopyWith<SingleDownloadButtonPressed> get copyWith => _$SingleDownloadButtonPressedCopyWithImpl<SingleDownloadButtonPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingleDownloadButtonPressed&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode => Object.hash(runtimeType,uid);

@override
String toString() {
  return 'DownloadEvent.singleDownloadButtonPressed(uid: $uid)';
}


}

/// @nodoc
abstract mixin class $SingleDownloadButtonPressedCopyWith<$Res> implements $DownloadEventCopyWith<$Res> {
  factory $SingleDownloadButtonPressedCopyWith(SingleDownloadButtonPressed value, $Res Function(SingleDownloadButtonPressed) _then) = _$SingleDownloadButtonPressedCopyWithImpl;
@useResult
$Res call({
 UniqueID uid
});




}
/// @nodoc
class _$SingleDownloadButtonPressedCopyWithImpl<$Res>
    implements $SingleDownloadButtonPressedCopyWith<$Res> {
  _$SingleDownloadButtonPressedCopyWithImpl(this._self, this._then);

  final SingleDownloadButtonPressed _self;
  final $Res Function(SingleDownloadButtonPressed) _then;

/// Create a copy of DownloadEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,}) {
  return _then(SingleDownloadButtonPressed(
null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as UniqueID,
  ));
}


}

/// @nodoc


class BatchDownloadButtonPressed implements DownloadEvent {
  const BatchDownloadButtonPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BatchDownloadButtonPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadEvent.batchDownloadButtonPressed()';
}


}




/// @nodoc


class ClearButtonPressed implements DownloadEvent {
  const ClearButtonPressed(this.uid);
  

 final  UniqueID uid;

/// Create a copy of DownloadEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClearButtonPressedCopyWith<ClearButtonPressed> get copyWith => _$ClearButtonPressedCopyWithImpl<ClearButtonPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearButtonPressed&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode => Object.hash(runtimeType,uid);

@override
String toString() {
  return 'DownloadEvent.clearButtonPressed(uid: $uid)';
}


}

/// @nodoc
abstract mixin class $ClearButtonPressedCopyWith<$Res> implements $DownloadEventCopyWith<$Res> {
  factory $ClearButtonPressedCopyWith(ClearButtonPressed value, $Res Function(ClearButtonPressed) _then) = _$ClearButtonPressedCopyWithImpl;
@useResult
$Res call({
 UniqueID uid
});




}
/// @nodoc
class _$ClearButtonPressedCopyWithImpl<$Res>
    implements $ClearButtonPressedCopyWith<$Res> {
  _$ClearButtonPressedCopyWithImpl(this._self, this._then);

  final ClearButtonPressed _self;
  final $Res Function(ClearButtonPressed) _then;

/// Create a copy of DownloadEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,}) {
  return _then(ClearButtonPressed(
null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as UniqueID,
  ));
}


}

/// @nodoc


class BatchClearButtonPressed implements DownloadEvent {
  const BatchClearButtonPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BatchClearButtonPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadEvent.batchClearButtonPressed()';
}


}




/// @nodoc


class DownloadSucceeded implements DownloadEvent {
  const DownloadSucceeded(this.downloadInfo);
  

 final  DownloadInfo downloadInfo;

/// Create a copy of DownloadEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadSucceededCopyWith<DownloadSucceeded> get copyWith => _$DownloadSucceededCopyWithImpl<DownloadSucceeded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadSucceeded&&(identical(other.downloadInfo, downloadInfo) || other.downloadInfo == downloadInfo));
}


@override
int get hashCode => Object.hash(runtimeType,downloadInfo);

@override
String toString() {
  return 'DownloadEvent.downloadSucceeded(downloadInfo: $downloadInfo)';
}


}

/// @nodoc
abstract mixin class $DownloadSucceededCopyWith<$Res> implements $DownloadEventCopyWith<$Res> {
  factory $DownloadSucceededCopyWith(DownloadSucceeded value, $Res Function(DownloadSucceeded) _then) = _$DownloadSucceededCopyWithImpl;
@useResult
$Res call({
 DownloadInfo downloadInfo
});


$DownloadInfoCopyWith<$Res> get downloadInfo;

}
/// @nodoc
class _$DownloadSucceededCopyWithImpl<$Res>
    implements $DownloadSucceededCopyWith<$Res> {
  _$DownloadSucceededCopyWithImpl(this._self, this._then);

  final DownloadSucceeded _self;
  final $Res Function(DownloadSucceeded) _then;

/// Create a copy of DownloadEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? downloadInfo = null,}) {
  return _then(DownloadSucceeded(
null == downloadInfo ? _self.downloadInfo : downloadInfo // ignore: cast_nullable_to_non_nullable
as DownloadInfo,
  ));
}

/// Create a copy of DownloadEvent
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


class DownloadFailed implements DownloadEvent {
  const DownloadFailed(this.failure);
  

 final  GalleryDLFailure failure;

/// Create a copy of DownloadEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadFailedCopyWith<DownloadFailed> get copyWith => _$DownloadFailedCopyWithImpl<DownloadFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'DownloadEvent.downloadFailed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $DownloadFailedCopyWith<$Res> implements $DownloadEventCopyWith<$Res> {
  factory $DownloadFailedCopyWith(DownloadFailed value, $Res Function(DownloadFailed) _then) = _$DownloadFailedCopyWithImpl;
@useResult
$Res call({
 GalleryDLFailure failure
});


$GalleryDLFailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$DownloadFailedCopyWithImpl<$Res>
    implements $DownloadFailedCopyWith<$Res> {
  _$DownloadFailedCopyWithImpl(this._self, this._then);

  final DownloadFailed _self;
  final $Res Function(DownloadFailed) _then;

/// Create a copy of DownloadEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(DownloadFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as GalleryDLFailure,
  ));
}

/// Create a copy of DownloadEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GalleryDLFailureCopyWith<$Res> get failure {
  
  return $GalleryDLFailureCopyWith<$Res>(_self.failure, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

/// @nodoc


class GalleryDLLinkPressed implements DownloadEvent {
  const GalleryDLLinkPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GalleryDLLinkPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadEvent.galleryDLLinkPressed()';
}


}




/// @nodoc
mixin _$DownloadState {

 Option<Result<Unit, CoreFailure>> get failureOrOption; List<DownloadInfo> get downloadInfos;
/// Create a copy of DownloadState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadStateCopyWith<DownloadState> get copyWith => _$DownloadStateCopyWithImpl<DownloadState>(this as DownloadState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadState&&(identical(other.failureOrOption, failureOrOption) || other.failureOrOption == failureOrOption)&&const DeepCollectionEquality().equals(other.downloadInfos, downloadInfos));
}


@override
int get hashCode => Object.hash(runtimeType,failureOrOption,const DeepCollectionEquality().hash(downloadInfos));

@override
String toString() {
  return 'DownloadState(failureOrOption: $failureOrOption, downloadInfos: $downloadInfos)';
}


}

/// @nodoc
abstract mixin class $DownloadStateCopyWith<$Res>  {
  factory $DownloadStateCopyWith(DownloadState value, $Res Function(DownloadState) _then) = _$DownloadStateCopyWithImpl;
@useResult
$Res call({
 Option<Result<Unit, CoreFailure>> failureOrOption, List<DownloadInfo> downloadInfos
});




}
/// @nodoc
class _$DownloadStateCopyWithImpl<$Res>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._self, this._then);

  final DownloadState _self;
  final $Res Function(DownloadState) _then;

/// Create a copy of DownloadState
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


class _DownloadState implements DownloadState {
  const _DownloadState({required this.failureOrOption, required final  List<DownloadInfo> downloadInfos}): _downloadInfos = downloadInfos;
  

@override final  Option<Result<Unit, CoreFailure>> failureOrOption;
 final  List<DownloadInfo> _downloadInfos;
@override List<DownloadInfo> get downloadInfos {
  if (_downloadInfos is EqualUnmodifiableListView) return _downloadInfos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_downloadInfos);
}


/// Create a copy of DownloadState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadStateCopyWith<_DownloadState> get copyWith => __$DownloadStateCopyWithImpl<_DownloadState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadState&&(identical(other.failureOrOption, failureOrOption) || other.failureOrOption == failureOrOption)&&const DeepCollectionEquality().equals(other._downloadInfos, _downloadInfos));
}


@override
int get hashCode => Object.hash(runtimeType,failureOrOption,const DeepCollectionEquality().hash(_downloadInfos));

@override
String toString() {
  return 'DownloadState(failureOrOption: $failureOrOption, downloadInfos: $downloadInfos)';
}


}

/// @nodoc
abstract mixin class _$DownloadStateCopyWith<$Res> implements $DownloadStateCopyWith<$Res> {
  factory _$DownloadStateCopyWith(_DownloadState value, $Res Function(_DownloadState) _then) = __$DownloadStateCopyWithImpl;
@override @useResult
$Res call({
 Option<Result<Unit, CoreFailure>> failureOrOption, List<DownloadInfo> downloadInfos
});




}
/// @nodoc
class __$DownloadStateCopyWithImpl<$Res>
    implements _$DownloadStateCopyWith<$Res> {
  __$DownloadStateCopyWithImpl(this._self, this._then);

  final _DownloadState _self;
  final $Res Function(_DownloadState) _then;

/// Create a copy of DownloadState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failureOrOption = null,Object? downloadInfos = null,}) {
  return _then(_DownloadState(
failureOrOption: null == failureOrOption ? _self.failureOrOption : failureOrOption // ignore: cast_nullable_to_non_nullable
as Option<Result<Unit, CoreFailure>>,downloadInfos: null == downloadInfos ? _self._downloadInfos : downloadInfos // ignore: cast_nullable_to_non_nullable
as List<DownloadInfo>,
  ));
}


}

// dart format on

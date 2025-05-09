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


class _GalleryDLFound implements DownloadsEvent {
  const _GalleryDLFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GalleryDLFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsEvent.galleryDLFound()';
}


}




/// @nodoc


class AddURLButtonPressed implements DownloadsEvent {
  const AddURLButtonPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddURLButtonPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsEvent.addURLButtonPressed()';
}


}




/// @nodoc


class URLChanged implements DownloadsEvent {
  const URLChanged(this.uid, this.url);
  

 final  UniqueID uid;
 final  String url;

/// Create a copy of DownloadsEvent
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
  return 'DownloadsEvent.urlChanged(uid: $uid, url: $url)';
}


}

/// @nodoc
abstract mixin class $URLChangedCopyWith<$Res> implements $DownloadsEventCopyWith<$Res> {
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

/// Create a copy of DownloadsEvent
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


class FolderChanged implements DownloadsEvent {
  const FolderChanged(this.uid, this.folder);
  

 final  UniqueID uid;
 final  String folder;

/// Create a copy of DownloadsEvent
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
  return 'DownloadsEvent.folderChanged(uid: $uid, folder: $folder)';
}


}

/// @nodoc
abstract mixin class $FolderChangedCopyWith<$Res> implements $DownloadsEventCopyWith<$Res> {
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

/// Create a copy of DownloadsEvent
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


class SingleDownloadButtonPressed implements DownloadsEvent {
  const SingleDownloadButtonPressed(this.uid);
  

 final  UniqueID uid;

/// Create a copy of DownloadsEvent
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
  return 'DownloadsEvent.singleDownloadButtonPressed(uid: $uid)';
}


}

/// @nodoc
abstract mixin class $SingleDownloadButtonPressedCopyWith<$Res> implements $DownloadsEventCopyWith<$Res> {
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

/// Create a copy of DownloadsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,}) {
  return _then(SingleDownloadButtonPressed(
null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as UniqueID,
  ));
}


}

/// @nodoc


class BatchDownloadButtonPressed implements DownloadsEvent {
  const BatchDownloadButtonPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BatchDownloadButtonPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsEvent.batchDownloadButtonPressed()';
}


}




/// @nodoc


class ClearButtonPressed implements DownloadsEvent {
  const ClearButtonPressed(this.uid);
  

 final  UniqueID uid;

/// Create a copy of DownloadsEvent
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
  return 'DownloadsEvent.clearButtonPressed(uid: $uid)';
}


}

/// @nodoc
abstract mixin class $ClearButtonPressedCopyWith<$Res> implements $DownloadsEventCopyWith<$Res> {
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

/// Create a copy of DownloadsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,}) {
  return _then(ClearButtonPressed(
null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as UniqueID,
  ));
}


}

/// @nodoc


class BatchClearButtonPressed implements DownloadsEvent {
  const BatchClearButtonPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BatchClearButtonPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsEvent.batchClearButtonPressed()';
}


}




/// @nodoc


class _DownloadSucceeded implements DownloadsEvent {
  const _DownloadSucceeded(this.downloadInfo);
  

 final  DownloadInfo downloadInfo;

/// Create a copy of DownloadsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadSucceededCopyWith<_DownloadSucceeded> get copyWith => __$DownloadSucceededCopyWithImpl<_DownloadSucceeded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadSucceeded&&(identical(other.downloadInfo, downloadInfo) || other.downloadInfo == downloadInfo));
}


@override
int get hashCode => Object.hash(runtimeType,downloadInfo);

@override
String toString() {
  return 'DownloadsEvent.downloadSucceeded(downloadInfo: $downloadInfo)';
}


}

/// @nodoc
abstract mixin class _$DownloadSucceededCopyWith<$Res> implements $DownloadsEventCopyWith<$Res> {
  factory _$DownloadSucceededCopyWith(_DownloadSucceeded value, $Res Function(_DownloadSucceeded) _then) = __$DownloadSucceededCopyWithImpl;
@useResult
$Res call({
 DownloadInfo downloadInfo
});


$DownloadInfoCopyWith<$Res> get downloadInfo;

}
/// @nodoc
class __$DownloadSucceededCopyWithImpl<$Res>
    implements _$DownloadSucceededCopyWith<$Res> {
  __$DownloadSucceededCopyWithImpl(this._self, this._then);

  final _DownloadSucceeded _self;
  final $Res Function(_DownloadSucceeded) _then;

/// Create a copy of DownloadsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? downloadInfo = null,}) {
  return _then(_DownloadSucceeded(
null == downloadInfo ? _self.downloadInfo : downloadInfo // ignore: cast_nullable_to_non_nullable
as DownloadInfo,
  ));
}

/// Create a copy of DownloadsEvent
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


class _DownloadFailed implements DownloadsEvent {
  const _DownloadFailed(this.failure);
  

 final  GalleryDLFailure failure;

/// Create a copy of DownloadsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadFailedCopyWith<_DownloadFailed> get copyWith => __$DownloadFailedCopyWithImpl<_DownloadFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'DownloadsEvent.downloadFailed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$DownloadFailedCopyWith<$Res> implements $DownloadsEventCopyWith<$Res> {
  factory _$DownloadFailedCopyWith(_DownloadFailed value, $Res Function(_DownloadFailed) _then) = __$DownloadFailedCopyWithImpl;
@useResult
$Res call({
 GalleryDLFailure failure
});


$GalleryDLFailureCopyWith<$Res> get failure;

}
/// @nodoc
class __$DownloadFailedCopyWithImpl<$Res>
    implements _$DownloadFailedCopyWith<$Res> {
  __$DownloadFailedCopyWithImpl(this._self, this._then);

  final _DownloadFailed _self;
  final $Res Function(_DownloadFailed) _then;

/// Create a copy of DownloadsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_DownloadFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as GalleryDLFailure,
  ));
}

/// Create a copy of DownloadsEvent
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


class GalleryDLURLPressed implements DownloadsEvent {
  const GalleryDLURLPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GalleryDLURLPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsEvent.galleryDLURLPressed()';
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

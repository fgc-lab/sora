// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadInfo {

 UniqueID get uid; URL get url; DownloadStatus get status; bool get isDuplicate; NonEmptyString? get folder; NonEmptyString? get message; DateTime? get updatedAt;
/// Create a copy of DownloadInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadInfoCopyWith<DownloadInfo> get copyWith => _$DownloadInfoCopyWithImpl<DownloadInfo>(this as DownloadInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadInfo&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.url, url) || other.url == url)&&(identical(other.status, status) || other.status == status)&&(identical(other.isDuplicate, isDuplicate) || other.isDuplicate == isDuplicate)&&(identical(other.folder, folder) || other.folder == folder)&&(identical(other.message, message) || other.message == message)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,uid,url,status,isDuplicate,folder,message,updatedAt);

@override
String toString() {
  return 'DownloadInfo(uid: $uid, url: $url, status: $status, isDuplicate: $isDuplicate, folder: $folder, message: $message, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DownloadInfoCopyWith<$Res>  {
  factory $DownloadInfoCopyWith(DownloadInfo value, $Res Function(DownloadInfo) _then) = _$DownloadInfoCopyWithImpl;
@useResult
$Res call({
 UniqueID uid, URL url, DownloadStatus status, bool isDuplicate, NonEmptyString? folder, NonEmptyString? message, DateTime? updatedAt
});




}
/// @nodoc
class _$DownloadInfoCopyWithImpl<$Res>
    implements $DownloadInfoCopyWith<$Res> {
  _$DownloadInfoCopyWithImpl(this._self, this._then);

  final DownloadInfo _self;
  final $Res Function(DownloadInfo) _then;

/// Create a copy of DownloadInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? url = null,Object? status = null,Object? isDuplicate = null,Object? folder = freezed,Object? message = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as UniqueID,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as URL,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DownloadStatus,isDuplicate: null == isDuplicate ? _self.isDuplicate : isDuplicate // ignore: cast_nullable_to_non_nullable
as bool,folder: freezed == folder ? _self.folder : folder // ignore: cast_nullable_to_non_nullable
as NonEmptyString?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as NonEmptyString?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc


class _DownloadInfo implements DownloadInfo {
  const _DownloadInfo({required this.uid, required this.url, required this.status, required this.isDuplicate, this.folder, this.message, this.updatedAt});
  

@override final  UniqueID uid;
@override final  URL url;
@override final  DownloadStatus status;
@override final  bool isDuplicate;
@override final  NonEmptyString? folder;
@override final  NonEmptyString? message;
@override final  DateTime? updatedAt;

/// Create a copy of DownloadInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadInfoCopyWith<_DownloadInfo> get copyWith => __$DownloadInfoCopyWithImpl<_DownloadInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadInfo&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.url, url) || other.url == url)&&(identical(other.status, status) || other.status == status)&&(identical(other.isDuplicate, isDuplicate) || other.isDuplicate == isDuplicate)&&(identical(other.folder, folder) || other.folder == folder)&&(identical(other.message, message) || other.message == message)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,uid,url,status,isDuplicate,folder,message,updatedAt);

@override
String toString() {
  return 'DownloadInfo(uid: $uid, url: $url, status: $status, isDuplicate: $isDuplicate, folder: $folder, message: $message, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DownloadInfoCopyWith<$Res> implements $DownloadInfoCopyWith<$Res> {
  factory _$DownloadInfoCopyWith(_DownloadInfo value, $Res Function(_DownloadInfo) _then) = __$DownloadInfoCopyWithImpl;
@override @useResult
$Res call({
 UniqueID uid, URL url, DownloadStatus status, bool isDuplicate, NonEmptyString? folder, NonEmptyString? message, DateTime? updatedAt
});




}
/// @nodoc
class __$DownloadInfoCopyWithImpl<$Res>
    implements _$DownloadInfoCopyWith<$Res> {
  __$DownloadInfoCopyWithImpl(this._self, this._then);

  final _DownloadInfo _self;
  final $Res Function(_DownloadInfo) _then;

/// Create a copy of DownloadInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? url = null,Object? status = null,Object? isDuplicate = null,Object? folder = freezed,Object? message = freezed,Object? updatedAt = freezed,}) {
  return _then(_DownloadInfo(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as UniqueID,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as URL,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DownloadStatus,isDuplicate: null == isDuplicate ? _self.isDuplicate : isDuplicate // ignore: cast_nullable_to_non_nullable
as bool,folder: freezed == folder ? _self.folder : folder // ignore: cast_nullable_to_non_nullable
as NonEmptyString?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as NonEmptyString?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

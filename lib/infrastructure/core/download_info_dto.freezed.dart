// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadInfoDTO {

 String get url; int? get id; String? get uid; String? get folder; DateTime? get updatedAt;
/// Create a copy of DownloadInfoDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadInfoDTOCopyWith<DownloadInfoDTO> get copyWith => _$DownloadInfoDTOCopyWithImpl<DownloadInfoDTO>(this as DownloadInfoDTO, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadInfoDTO&&(identical(other.url, url) || other.url == url)&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.folder, folder) || other.folder == folder)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,url,id,uid,folder,updatedAt);

@override
String toString() {
  return 'DownloadInfoDTO(url: $url, id: $id, uid: $uid, folder: $folder, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DownloadInfoDTOCopyWith<$Res>  {
  factory $DownloadInfoDTOCopyWith(DownloadInfoDTO value, $Res Function(DownloadInfoDTO) _then) = _$DownloadInfoDTOCopyWithImpl;
@useResult
$Res call({
 String url, int? id, String? uid, String? folder, DateTime? updatedAt
});




}
/// @nodoc
class _$DownloadInfoDTOCopyWithImpl<$Res>
    implements $DownloadInfoDTOCopyWith<$Res> {
  _$DownloadInfoDTOCopyWithImpl(this._self, this._then);

  final DownloadInfoDTO _self;
  final $Res Function(DownloadInfoDTO) _then;

/// Create a copy of DownloadInfoDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? id = freezed,Object? uid = freezed,Object? folder = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,folder: freezed == folder ? _self.folder : folder // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc


class _DownloadInfoDTO implements DownloadInfoDTO {
  const _DownloadInfoDTO({required this.url, this.id, this.uid, this.folder, this.updatedAt});
  

@override final  String url;
@override final  int? id;
@override final  String? uid;
@override final  String? folder;
@override final  DateTime? updatedAt;

/// Create a copy of DownloadInfoDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadInfoDTOCopyWith<_DownloadInfoDTO> get copyWith => __$DownloadInfoDTOCopyWithImpl<_DownloadInfoDTO>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadInfoDTO&&(identical(other.url, url) || other.url == url)&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.folder, folder) || other.folder == folder)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,url,id,uid,folder,updatedAt);

@override
String toString() {
  return 'DownloadInfoDTO(url: $url, id: $id, uid: $uid, folder: $folder, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DownloadInfoDTOCopyWith<$Res> implements $DownloadInfoDTOCopyWith<$Res> {
  factory _$DownloadInfoDTOCopyWith(_DownloadInfoDTO value, $Res Function(_DownloadInfoDTO) _then) = __$DownloadInfoDTOCopyWithImpl;
@override @useResult
$Res call({
 String url, int? id, String? uid, String? folder, DateTime? updatedAt
});




}
/// @nodoc
class __$DownloadInfoDTOCopyWithImpl<$Res>
    implements _$DownloadInfoDTOCopyWith<$Res> {
  __$DownloadInfoDTOCopyWithImpl(this._self, this._then);

  final _DownloadInfoDTO _self;
  final $Res Function(_DownloadInfoDTO) _then;

/// Create a copy of DownloadInfoDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? id = freezed,Object? uid = freezed,Object? folder = freezed,Object? updatedAt = freezed,}) {
  return _then(_DownloadInfoDTO(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,folder: freezed == folder ? _self.folder : folder // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

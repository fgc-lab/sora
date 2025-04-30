// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_dl_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GalleryDLFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GalleryDLFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GalleryDLFailure()';
}


}

/// @nodoc
class $GalleryDLFailureCopyWith<$Res>  {
$GalleryDLFailureCopyWith(GalleryDLFailure _, $Res Function(GalleryDLFailure) __);
}


/// @nodoc


class GalleryDLNotFound implements GalleryDLFailure {
  const GalleryDLNotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GalleryDLNotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GalleryDLFailure.notFound()';
}


}




/// @nodoc


class GalleryDLGithubLinkFailedToOpen implements GalleryDLFailure {
  const GalleryDLGithubLinkFailedToOpen();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GalleryDLGithubLinkFailedToOpen);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GalleryDLFailure.githubLinkFailedToOpen()';
}


}




/// @nodoc


class DownloadInfoAlreadyExist implements GalleryDLFailure {
  const DownloadInfoAlreadyExist(this.downloadInfo);
  

 final  DownloadInfo downloadInfo;

/// Create a copy of GalleryDLFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadInfoAlreadyExistCopyWith<DownloadInfoAlreadyExist> get copyWith => _$DownloadInfoAlreadyExistCopyWithImpl<DownloadInfoAlreadyExist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadInfoAlreadyExist&&(identical(other.downloadInfo, downloadInfo) || other.downloadInfo == downloadInfo));
}


@override
int get hashCode => Object.hash(runtimeType,downloadInfo);

@override
String toString() {
  return 'GalleryDLFailure.alreadyExist(downloadInfo: $downloadInfo)';
}


}

/// @nodoc
abstract mixin class $DownloadInfoAlreadyExistCopyWith<$Res> implements $GalleryDLFailureCopyWith<$Res> {
  factory $DownloadInfoAlreadyExistCopyWith(DownloadInfoAlreadyExist value, $Res Function(DownloadInfoAlreadyExist) _then) = _$DownloadInfoAlreadyExistCopyWithImpl;
@useResult
$Res call({
 DownloadInfo downloadInfo
});


$DownloadInfoCopyWith<$Res> get downloadInfo;

}
/// @nodoc
class _$DownloadInfoAlreadyExistCopyWithImpl<$Res>
    implements $DownloadInfoAlreadyExistCopyWith<$Res> {
  _$DownloadInfoAlreadyExistCopyWithImpl(this._self, this._then);

  final DownloadInfoAlreadyExist _self;
  final $Res Function(DownloadInfoAlreadyExist) _then;

/// Create a copy of GalleryDLFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? downloadInfo = null,}) {
  return _then(DownloadInfoAlreadyExist(
null == downloadInfo ? _self.downloadInfo : downloadInfo // ignore: cast_nullable_to_non_nullable
as DownloadInfo,
  ));
}

/// Create a copy of GalleryDLFailure
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


class InvalidURL implements GalleryDLFailure {
  const InvalidURL(this.downloadInfo);
  

 final  DownloadInfo downloadInfo;

/// Create a copy of GalleryDLFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidURLCopyWith<InvalidURL> get copyWith => _$InvalidURLCopyWithImpl<InvalidURL>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidURL&&(identical(other.downloadInfo, downloadInfo) || other.downloadInfo == downloadInfo));
}


@override
int get hashCode => Object.hash(runtimeType,downloadInfo);

@override
String toString() {
  return 'GalleryDLFailure.invalidURL(downloadInfo: $downloadInfo)';
}


}

/// @nodoc
abstract mixin class $InvalidURLCopyWith<$Res> implements $GalleryDLFailureCopyWith<$Res> {
  factory $InvalidURLCopyWith(InvalidURL value, $Res Function(InvalidURL) _then) = _$InvalidURLCopyWithImpl;
@useResult
$Res call({
 DownloadInfo downloadInfo
});


$DownloadInfoCopyWith<$Res> get downloadInfo;

}
/// @nodoc
class _$InvalidURLCopyWithImpl<$Res>
    implements $InvalidURLCopyWith<$Res> {
  _$InvalidURLCopyWithImpl(this._self, this._then);

  final InvalidURL _self;
  final $Res Function(InvalidURL) _then;

/// Create a copy of GalleryDLFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? downloadInfo = null,}) {
  return _then(InvalidURL(
null == downloadInfo ? _self.downloadInfo : downloadInfo // ignore: cast_nullable_to_non_nullable
as DownloadInfo,
  ));
}

/// Create a copy of GalleryDLFailure
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


class Unexpected implements GalleryDLFailure {
  const Unexpected({this.downloadInfo});
  

 final  DownloadInfo? downloadInfo;

/// Create a copy of GalleryDLFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnexpectedCopyWith<Unexpected> get copyWith => _$UnexpectedCopyWithImpl<Unexpected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unexpected&&(identical(other.downloadInfo, downloadInfo) || other.downloadInfo == downloadInfo));
}


@override
int get hashCode => Object.hash(runtimeType,downloadInfo);

@override
String toString() {
  return 'GalleryDLFailure.unexpected(downloadInfo: $downloadInfo)';
}


}

/// @nodoc
abstract mixin class $UnexpectedCopyWith<$Res> implements $GalleryDLFailureCopyWith<$Res> {
  factory $UnexpectedCopyWith(Unexpected value, $Res Function(Unexpected) _then) = _$UnexpectedCopyWithImpl;
@useResult
$Res call({
 DownloadInfo? downloadInfo
});


$DownloadInfoCopyWith<$Res>? get downloadInfo;

}
/// @nodoc
class _$UnexpectedCopyWithImpl<$Res>
    implements $UnexpectedCopyWith<$Res> {
  _$UnexpectedCopyWithImpl(this._self, this._then);

  final Unexpected _self;
  final $Res Function(Unexpected) _then;

/// Create a copy of GalleryDLFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? downloadInfo = freezed,}) {
  return _then(Unexpected(
downloadInfo: freezed == downloadInfo ? _self.downloadInfo : downloadInfo // ignore: cast_nullable_to_non_nullable
as DownloadInfo?,
  ));
}

/// Create a copy of GalleryDLFailure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DownloadInfoCopyWith<$Res>? get downloadInfo {
    if (_self.downloadInfo == null) {
    return null;
  }

  return $DownloadInfoCopyWith<$Res>(_self.downloadInfo!, (value) {
    return _then(_self.copyWith(downloadInfo: value));
  });
}
}

// dart format on

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sora/domain/core/download_info.dart';
import 'package:sora/domain/core/download_status.dart';
import 'package:sora/domain/core/non_empty_string.dart';
import 'package:sora/domain/core/unique_id.dart';
import 'package:sora/domain/core/url.dart';
import 'package:sora/infrastructure/core/drift_injectable_module.dart';

part 'download_info_dto.freezed.dart';

@freezed
sealed class DownloadInfoDTO with _$DownloadInfoDTO {
  const factory DownloadInfoDTO({
    required String url,
    int? id,
    String? uid,
    String? folder,
    DateTime? updatedAt,
  }) = _DownloadInfoDTO;

  factory DownloadInfoDTO.fromDomain(DownloadInfo downloadInfo) {
    return DownloadInfoDTO(
      uid: downloadInfo.uid.getOrCrash(),
      url: downloadInfo.url.getOrCrash(),
      folder: downloadInfo.folder?.getOrCrash(),
      updatedAt: downloadInfo.updatedAt,
    );
  }

  factory DownloadInfoDTO.fromAdapter(DriftDownloadInfoData downloadInfo) {
    return DownloadInfoDTO(
      id: downloadInfo.id,
      url: downloadInfo.url,
      folder: downloadInfo.folder,
      updatedAt: downloadInfo.updatedAt,
    );
  }
}

extension DownloadInfoDTOX on DownloadInfoDTO {
  DownloadInfo toDomain() => DownloadInfo(
    uid: UniqueID(),
    url: URL(url),
    folder: folder != null ? NonEmptyString(folder!) : null,
    status: DownloadStatus.unknown,
    isDuplicate: false,
  );

  DriftDownloadInfoData toAdapter() => DriftDownloadInfoData(
    id: id ?? 0,
    url: url,
    folder: folder,
    updatedAt: updatedAt ?? DateTime.now(),
  );

  Map<String, dynamic> toMap() => <String, dynamic>{
    'id': id,
    'uid': uid,
    'url': url,
    'folder': folder,
    'updatedAt': updatedAt,
  };
}

extension DownloadInfoMapX on Map<dynamic, dynamic> {
  DownloadInfo toDomain() => DownloadInfo(
    uid: UniqueID.fromUniqueString(this['uid'] as String),
    url: URL(this['url'] as String),
    folder:
        this['folder'] != null
            ? NonEmptyString(this['folder'] as String)
            : null,
    updatedAt: this['updatedAt'] as DateTime,
    status: DownloadStatus.unknown,
    isDuplicate: false,
  );
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sora/domain/core/download_status.dart';
import 'package:sora/domain/core/non_empty_string.dart';
import 'package:sora/domain/core/unique_id.dart';
import 'package:sora/domain/core/url.dart';

part 'download_info.freezed.dart';

@freezed
sealed class DownloadInfo with _$DownloadInfo {
  const factory DownloadInfo({
    required UniqueID uid,
    required URL url,
    required DownloadStatus status,
    required bool isDuplicate,
    NonEmptyString? folder,
    NonEmptyString? message,
    DateTime? updatedAt,
  }) = _DownloadInfo;

  factory DownloadInfo.empty() => DownloadInfo(
    uid: UniqueID(),
    url: URL(''),
    status: DownloadStatus.unknown,
    isDuplicate: false,
  );
}

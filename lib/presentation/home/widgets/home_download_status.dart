import 'package:flutter/material.dart';
import 'package:sora/domain/core/download_info.dart';
import 'package:sora/domain/core/download_status.dart';
import 'package:sora/utils/palette.dart';

class HomeDownloadStatus extends StatelessWidget {
  const HomeDownloadStatus({required this.downloadInfo, this.size, super.key});

  final DownloadInfo? downloadInfo;

  final double? size;

  @override
  Widget build(BuildContext context) {
    if (downloadInfo == null) {
      return Icon(
        Icons.error_outline_rounded,
        color: Palette.error,
        size: size,
      );
    }
    switch (downloadInfo!.status) {
      case DownloadStatus.pending:
        return Icon(Icons.schedule_outlined, color: Palette.grey, size: size);
      case DownloadStatus.downloading:
        return Tooltip(
          message: downloadInfo?.message?.getOrNull() ?? '',
          child: Icon(
            Icons.downloading_outlined,
            color: Palette.info,
            size: size,
          ),
        );
      case DownloadStatus.success:
        return Tooltip(
          message: downloadInfo?.message?.getOrNull(),
          child: Icon(
            Icons.check_circle_outline_rounded,
            color: Palette.success,
            size: size,
          ),
        );
      case DownloadStatus.failure:
        return Tooltip(
          message: downloadInfo?.message?.getOrNull(),
          child: Icon(
            Icons.error_outline_rounded,
            color: Palette.error,
            size: size,
          ),
        );
      case DownloadStatus.unknown:
        return Icon(
          Icons.question_mark_rounded,
          color: Palette.warning,
          size: size,
        );
    }
  }
}

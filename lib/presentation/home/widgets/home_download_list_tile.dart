import 'package:flutter/material.dart';
import 'package:sora/domain/core/download_info.dart';
import 'package:sora/domain/core/download_status.dart';
import 'package:sora/presentation/core/default_icon_button.dart';
import 'package:sora/presentation/core/default_text_field.dart';
import 'package:sora/presentation/home/widgets/home_download_status.dart';

class HomeDownloadListTile extends StatelessWidget {
  const HomeDownloadListTile({
    required this.downloadInfo,
    required this.folderValidator,
    required this.urlValidator,
    required this.onDownloadPressed,
    required this.onClearPressed,
    super.key,
    this.folderController,
    this.onFolderChanged,
    this.urlController,
    this.onURLChanged,
  });

  final DownloadInfo downloadInfo;

  final TextEditingController? folderController;

  final void Function(String)? onFolderChanged;

  final String? Function(String?) folderValidator;

  final TextEditingController? urlController;

  final void Function(String)? onURLChanged;

  final String? Function(String?) urlValidator;

  final VoidCallback onDownloadPressed;

  final VoidCallback onClearPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HomeDownloadStatus(downloadInfo: downloadInfo, size: 32),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: DefaultTextField(
              disabled:
                  downloadInfo.status == DownloadStatus.downloading ||
                  downloadInfo.status == DownloadStatus.success,
              hintText: 'folder-name',
              controller: folderController,
              onChanged: onFolderChanged,
              validator: folderValidator,
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: DefaultTextField(
            disabled:
                downloadInfo.status == DownloadStatus.downloading ||
                downloadInfo.status == DownloadStatus.success,
            controller: urlController,
            hintText: 'https://example.com',
            onChanged: onURLChanged,
            validator: urlValidator,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: DefaultIconButton(
            icon: Icons.download_rounded,
            disabled:
                downloadInfo.status == DownloadStatus.downloading ||
                downloadInfo.status == DownloadStatus.success,
            onPressed: onDownloadPressed,
          ),
        ),
        DefaultIconButton(
          icon: Icons.close_rounded,
          disabled: downloadInfo.status == DownloadStatus.downloading,
          onPressed: onClearPressed,
        ),
      ],
    );
  }
}

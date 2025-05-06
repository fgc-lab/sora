import 'package:flutter/material.dart';
import 'package:sora/domain/core/download_info.dart';
import 'package:sora/domain/core/download_status.dart';
import 'package:sora/presentation/core/default_icon_button.dart';
import 'package:sora/presentation/core/default_text_field.dart';
import 'package:sora/presentation/downloads/widgets/downloads_status_chip.dart';
import 'package:sora/utils/palette.dart';

class DownloadListTile extends StatelessWidget {
  const DownloadListTile({
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
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                DownloadStatusChip(downloadInfo: downloadInfo, size: 32),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Tooltip(
                  message: 'Optional folder name.',
                  verticalOffset: 30,
                  padding: const EdgeInsets.all(10),
                  textStyle: const TextStyle(
                    color: Palette.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
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
        ),
        if (downloadInfo.isDuplicate)
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'This URL seems to have already been used before!',
              style: TextStyle(
                color: Palette.error,
                letterSpacing: 1.1,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
      ],
    );
  }
}

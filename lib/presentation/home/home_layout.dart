import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sora/application/home/home_bloc.dart';
import 'package:sora/domain/core/core_failure.dart';
import 'package:sora/domain/core/download_status.dart';
import 'package:sora/domain/core/unique_id.dart';
import 'package:sora/domain/core/value_failure.dart';
import 'package:sora/domain/gallery_dl/gallery_dl_failure.dart';
import 'package:sora/presentation/core/default_button.dart';
import 'package:sora/presentation/core/default_icon_button.dart';
import 'package:sora/presentation/core/default_text_field.dart';
import 'package:sora/presentation/home/widgets/home_download_status.dart';
import 'package:sora/presentation/home/widgets/home_gallery_dl_not_found_dialog.dart';
import 'package:sora/utils/palette.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  final _urlTextEditingControllers = <UniqueID, TextEditingController>{};
  final _folderTextEditingControllers = <UniqueID, TextEditingController>{};

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        _urlTextEditingControllers.removeWhere(
          (key, _) => !state.downloadInfos.any((info) => info.uid == key),
        );
        _folderTextEditingControllers.removeWhere(
          (key, _) => !state.downloadInfos.any((info) => info.uid == key),
        );

        for (final info in state.downloadInfos) {
          if (!_urlTextEditingControllers.containsKey(info.uid)) {
            _urlTextEditingControllers.putIfAbsent(
              info.uid,
              TextEditingController.new,
            );
          }
          if (!_folderTextEditingControllers.containsKey(info.uid)) {
            _folderTextEditingControllers.putIfAbsent(
              info.uid,
              TextEditingController.new,
            );
          }
        }

        state.failureOrOption.when(
          some:
              (value) => value.when(
                ok: (_) {},
                err: (err) {
                  switch (err) {
                    case GalleryDL(:final GalleryDLFailure f):
                      switch (f) {
                        case GalleryDLNotFound():
                          showDialog<void>(
                            context: context,
                            builder:
                                (_) => HomeGalleryDLNotFoundDialog(
                                  onPressed:
                                      () => context.read<HomeBloc>().add(
                                        const HomeEvent.galleryDLLinkPressed(),
                                      ),
                                ),
                          );
                        default:
                          break;
                      }
                  }
                },
              ),
          none: () {},
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(7.5),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          BlocBuilder<HomeBloc, HomeState>(
                            builder: (context, state) {
                              return DefaultButton(
                                title: 'Download all',
                                isLoading: state.downloadInfos.any(
                                  (info) =>
                                      info.status == DownloadStatus.downloading,
                                ),
                                onPressed:
                                    () => context.read<HomeBloc>().add(
                                      const HomeEvent.batchDownloadButtonPressed(),
                                    ),
                                disabled:
                                    !state.downloadInfos.any(
                                      (info) =>
                                          info.status != DownloadStatus.success,
                                    ),
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: DefaultIconButton(
                              onPressed:
                                  () => context.read<HomeBloc>().add(
                                    const HomeEvent.addURLButtonPressed(),
                                  ),
                              icon: Icons.add,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BlocBuilder<HomeBloc, HomeState>(
                            builder: (context, state) {
                              return DefaultButton(
                                title: 'Clear all',
                                isLoading: state.downloadInfos.any(
                                  (info) =>
                                      info.status == DownloadStatus.downloading,
                                ),
                                onPressed:
                                    state.downloadInfos.any(
                                          (info) =>
                                              info.status ==
                                              DownloadStatus.downloading,
                                        )
                                        ? null
                                        : () => context.read<HomeBloc>().add(
                                          const HomeEvent.batchClearButtonPressed(),
                                        ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return ListView.separated(
                      itemCount: state.downloadInfos.length,
                      itemBuilder: (context, idx) {
                        final downloadInfo = state.downloadInfos[idx];
                        final urlController =
                            _urlTextEditingControllers[downloadInfo.uid];
                        final folderController =
                            _folderTextEditingControllers[downloadInfo.uid];

                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              HomeDownloadStatus(
                                downloadInfo: downloadInfo,
                                size: 32,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: DefaultTextField(
                                    disabled:
                                        downloadInfo.status ==
                                        DownloadStatus.success,
                                    hintText: 'folder-name',
                                    controller: folderController,
                                    onChanged:
                                        (value) => context.read<HomeBloc>().add(
                                          HomeEvent.folderChanged(
                                            downloadInfo.uid,
                                            value,
                                          ),
                                        ),
                                    validator:
                                        (_) => context
                                            .read<HomeBloc>()
                                            .state
                                            .downloadInfos[idx]
                                            .folder
                                            ?.value
                                            .match((_) => null, (err) {
                                              switch (err) {
                                                case ValueFailure.empty:
                                                  return 'Folder cannot be empty';
                                                default:
                                                  return null;
                                              }
                                            }),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: DefaultTextField(
                                  disabled:
                                      downloadInfo.status ==
                                      DownloadStatus.success,
                                  controller: urlController,
                                  hintText: 'https://example.com',
                                  onChanged:
                                      (value) => context.read<HomeBloc>().add(
                                        HomeEvent.urlChanged(
                                          downloadInfo.uid,
                                          value,
                                        ),
                                      ),
                                  validator:
                                      (_) => context
                                          .read<HomeBloc>()
                                          .state
                                          .downloadInfos[idx]
                                          .url
                                          .value
                                          .match((_) => null, (err) {
                                            switch (err) {
                                              case ValueFailure.invalidURL:
                                                return 'Invalid URL';
                                              case ValueFailure.empty:
                                                return 'URL cannot be empty';
                                              default:
                                                return null;
                                            }
                                          }),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: DefaultIconButton(
                                  icon: Icons.download_rounded,
                                  onPressed:
                                      downloadInfo.status ==
                                                  DownloadStatus.downloading ||
                                              downloadInfo.status ==
                                                  DownloadStatus.success
                                          ? null
                                          : () => context.read<HomeBloc>().add(
                                            HomeEvent.singleDownloadButtonPressed(
                                              downloadInfo.uid,
                                            ),
                                          ),
                                ),
                              ),
                              DefaultIconButton(
                                icon: Icons.close_rounded,
                                onPressed:
                                    downloadInfo.status ==
                                                DownloadStatus.downloading ||
                                            downloadInfo.status ==
                                                DownloadStatus.success
                                        ? null
                                        : () => context.read<HomeBloc>().add(
                                          HomeEvent.clearButtonPressed(
                                            downloadInfo.uid,
                                          ),
                                        ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, idx) => const Divider(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

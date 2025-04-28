import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:sora/domain/core/core_failure.dart';
import 'package:sora/domain/core/download_info.dart';
import 'package:sora/domain/core/download_status.dart';
import 'package:sora/domain/core/non_empty_string.dart';
import 'package:sora/domain/core/unique_id.dart';
import 'package:sora/domain/core/url.dart';
import 'package:sora/domain/gallery_dl/gallery_dl_failure.dart';
import 'package:sora/domain/gallery_dl/i_gallery_dl_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._galleryDLRepository) : super(HomeState.initial()) {
    on<Init>((event, emit) {
      final downloadInfo = DownloadInfo.empty().copyWith(
        status: DownloadStatus.pending,
      );

      emit(state.copyWith(downloadInfos: [downloadInfo]));
    });
    on<AddURLButtonPressed>((event, emit) {
      final newDownloadInfo = DownloadInfo.empty().copyWith(
        status: DownloadStatus.pending,
      );

      emit(
        state.copyWith(
          downloadInfos: [...state.downloadInfos, newDownloadInfo],
        ),
      );
    });
    on<URLChanged>((event, emit) {
      final newDownloadInfos =
          state.downloadInfos
              .map(
                (info) =>
                    info.uid == event.uid
                        ? info.copyWith(url: URL(event.url))
                        : info,
              )
              .toList();

      emit(state.copyWith(downloadInfos: newDownloadInfos));
    });
    on<FolderChanged>((event, emit) {
      final newDownloadInfos =
          state.downloadInfos
              .map(
                (info) =>
                    info.uid == event.uid
                        ? info.copyWith(folder: NonEmptyString(event.folder))
                        : info,
              )
              .toList();

      emit(state.copyWith(downloadInfos: newDownloadInfos));
    });
    on<SingleDownloadButtonPressed>((event, emit) async {
      var currentDownloadInfo = state.downloadInfos.singleWhereOrNull(
        (details) => details.uid == event.uid,
      );

      if (currentDownloadInfo == null) return;

      if (currentDownloadInfo.url.isValid) {
        currentDownloadInfo = currentDownloadInfo.copyWith(
          status: DownloadStatus.downloading,
        );

        final newDownloadInfos =
            state.downloadInfos
                .map(
                  (info) =>
                      info.uid == currentDownloadInfo?.uid
                          ? currentDownloadInfo
                          : info,
                )
                .whereType<DownloadInfo>()
                .toList();

        emit(state.copyWith(downloadInfos: newDownloadInfos));

        (await _galleryDLRepository.download(currentDownloadInfo)).match(
          (downloadInfo) {
            add(HomeEvent.downloadSucceeded(downloadInfo));
          },
          (failure) {
            add(HomeEvent.downloadFailed(failure));
          },
        );
      }
    });
    on<BatchDownloadButtonPressed>((event, emit) async {
      final downloadInfos =
          state.downloadInfos
              .where((info) => info.status != DownloadStatus.success)
              .toList();

      if (downloadInfos.isNotEmpty) {
        final newDownloadInfos =
            state.downloadInfos
                .map(
                  (info) =>
                      info.status != DownloadStatus.success
                          ? info.copyWith(status: DownloadStatus.downloading)
                          : info,
                )
                .toList();

        emit(state.copyWith(downloadInfos: newDownloadInfos));

        await _galleryDLSubscription?.cancel();
        _galleryDLSubscription = _galleryDLRepository
            .batchDownload(downloadInfos)
            .listen(
              (result) => result.match(
                (downloadInfo) {
                  add(HomeEvent.downloadSucceeded(downloadInfo));
                },
                (failure) {
                  add(HomeEvent.downloadFailed(failure));
                },
              ),
            );
      }
    });
    on<ClearButtonPressed>((event, emit) {
      final newDownloadInfos =
          state.downloadInfos.where((info) => info.uid != event.uid).toList();

      if (newDownloadInfos.isEmpty) {
        add(const HomeEvent.init());
      } else {
        emit(state.copyWith(downloadInfos: newDownloadInfos));
      }
    });
    on<BatchClearButtonPressed>((event, emit) {
      emit(state.copyWith(downloadInfos: []));

      add(const HomeEvent.init());
    });
    on<DownloadSucceeded>((event, emit) {
      final newDownloadInfos =
          state.downloadInfos
              .map(
                (info) =>
                    info.uid == event.downloadInfo.uid
                        ? event.downloadInfo
                        : info,
              )
              .toList();

      emit(state.copyWith(downloadInfos: newDownloadInfos));
    });
    on<DownloadFailed>((event, emit) {
      final newDownloadInfos =
          state.downloadInfos
              .map(
                (info) =>
                    info.uid == event.failure.downloadInfo.uid
                        ? event.failure.downloadInfo
                        : info,
              )
              .toList();

      emit(
        state.copyWith(
          failureOrOption: Some(Err(CoreFailure.galleryDL(event.failure))),
          downloadInfos: newDownloadInfos,
        ),
      );
    });
  }

  final IGalleryDLRepository _galleryDLRepository;

  StreamSubscription<Result<DownloadInfo, GalleryDLFailure>>?
  _galleryDLSubscription;

  @override
  Future<void> close() {
    _galleryDLSubscription?.cancel();

    return super.close();
  }
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:sora/domain/core/core_failure.dart';
import 'package:sora/domain/core/download_info.dart';
import 'package:sora/domain/gallery_dl/i_gallery_dl_repository.dart';
import 'package:sora/utils/pagination.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

@injectable
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc(this._galleryDLRepository) : super(HistoryState.initial()) {
    on<Init>((event, emit) async {
      (await _galleryDLRepository.countHistoryItems()).match((count) {
        emit(state.copyWith(itemsCount: count));

        add(HistoryEvent.itemsCounted(count));
      }, (failure) {});
    });
    on<ItemsCounted>((event, emit) async {
      final offset =
          state.paginationIdx == 0
              ? null
              : state.paginationIdx * Pagination.historyItemPerPage;

      (await _galleryDLRepository.fetchHistory(
        Pagination.historyItemPerPage,
        offset: offset,
      )).match((downloadInfos) {
        emit(state.copyWith(downloadInfos: downloadInfos));
      }, (failure) {});
    });
    on<OpenInNewPressed>((event, emit) async {
      (await _galleryDLRepository.launchURL(
        event.downloadInfo,
      )).match((_) {}, (failure) {});
    });
  }

  final IGalleryDLRepository _galleryDLRepository;
}

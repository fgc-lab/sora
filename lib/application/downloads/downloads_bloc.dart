import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:sora/domain/core/core_failure.dart';
import 'package:sora/domain/core/download_info.dart';
import 'package:sora/infrastructure/gallery_dl/gallery_dl_repository.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  DownloadsBloc(this._galleryDLRepository) : super(DownloadsState.initial()) {
    on<Init>((event, emit) async {
      (await _galleryDLRepository.fetchHistory()).match((_) {}, (failure) {});
    });
  }

  final GalleryDLRepository _galleryDLRepository;
}

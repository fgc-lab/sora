import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:sora/domain/core/core_failure.dart';
import 'package:sora/domain/core/unique_id.dart';
import 'package:sora/domain/gallery_dl/i_gallery_dl_repository.dart';
import 'package:sora/domain/settings/i_settings_repository.dart';
import 'package:sora/domain/settings/settings.dart';
import 'package:sora/domain/settings/settings_failure.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(this._galleryDLRepository, this._settingsRepository)
    : super(SettingsState.initial()) {
    on<Init>((event, emit) async {
      emit(state.copyWith(failureOrOption: const None()));

      (await _settingsRepository.fetchSettings(1)).match(
        (settings) {
          add(SettingsEvent.settingsFound(settings));
        },
        (failure) {
          switch (failure) {
            case SettingsNotFound():
              add(const SettingsEvent.settingsNotFound());
            default:
              emit(
                state.copyWith(
                  failureOrOption: Some(Err(CoreFailure.settings(failure))),
                ),
              );
          }
        },
      );
    });
    on<_SettingsFound>((event, emit) async {
      (await _galleryDLRepository.fetchConfig(
        event.settings,
      )).match((settings) {}, (failure) {});
    });
    on<_SettingsNotFound>((event, emit) async {
      final settings = Settings.empty().copyWith(
        uid: UniqueID.fromUniqueString('0'),
      );

      (await _settingsRepository.insertSettings(settings)).match((_) {
        add(SettingsEvent.settingsFound(settings));
      }, (failure) {});
    });
  }

  final IGalleryDLRepository _galleryDLRepository;
  final ISettingsRepository _settingsRepository;
}

import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:sora/domain/settings/i_settings_repository.dart';
import 'package:sora/domain/settings/settings.dart';
import 'package:sora/domain/settings/settings_failure.dart';
import 'package:sora/infrastructure/core/drift_injectable_module.dart';
import 'package:sora/infrastructure/settings/settings_dto.dart';

@LazySingleton(as: ISettingsRepository)
class DriftSettingsRepository implements ISettingsRepository {
  DriftSettingsRepository(this._drift);

  final DriftSoraDatabase _drift;

  @override
  Future<Result<Settings, SettingsFailure>> fetchSettings(int id) async {
    try {
      final result =
          await (_drift.select(_drift.driftSettings)
            ..where((s) => s.id.equals(id))).getSingleOrNull();

      if (result == null) {
        return const Err(SettingsFailure.notFound());
      }

      final settings = SettingsDTO.fromAdapter(result).toDomain();
      return Ok(settings);
    } on Exception catch (e) {
      return const Err(SettingsFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, SettingsFailure>> insertSettings(
    Settings settings,
  ) async {
    try {
      final driftSettings = SettingsDTO.fromDomain(settings).toAdapter();

      await _drift
          .into(_drift.driftSettings)
          .insertOnConflictUpdate(
            DriftSettingsCompanion.insert(
              id: Value(driftSettings.id),
              config: driftSettings.config,
              darkMode: Value(driftSettings.darkMode),
              updatedAt: Value(driftSettings.updatedAt),
            ),
          );

      return const Ok(unit);
    } on Exception catch (_) {
      return const Err(SettingsFailure.unexpected());
    }
  }
}

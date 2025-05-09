import 'package:oxidized/oxidized.dart';
import 'package:sora/domain/settings/settings.dart';
import 'package:sora/domain/settings/settings_failure.dart';

abstract class ISettingsRepository {
  Future<Result<Settings, SettingsFailure>> fetchSettings(int id);

  Future<Result<Unit, SettingsFailure>> insertSettings(Settings settings);
}

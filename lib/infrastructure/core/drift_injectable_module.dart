import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:sora/infrastructure/core/drift_download_info.dart';
import 'package:sora/infrastructure/settings/drift_settings.dart';

part 'drift_injectable_module.g.dart';

@DriftDatabase(tables: [DriftDownloadInfo, DriftSettings])
class DriftSoraDatabase extends _$DriftSoraDatabase {
  DriftSoraDatabase([QueryExecutor? executor])
    : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'soradb',
      native: const DriftNativeOptions(databaseDirectory: getDatabasePath),
    );
  }

  static Future<String> getDatabasePath() async {
    final directory = await getApplicationSupportDirectory();
    return path.join(directory.path, 'sora');
  }
}

@module
abstract class IDriftInjectableModule {
  @preResolve
  @lazySingleton
  Future<DriftSoraDatabase> get drift async {
    final database = DriftSoraDatabase();

    return database;
  }
}

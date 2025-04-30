import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:sora/infrastructure/core/drift_download_info.dart';

part 'drift_injectable_module.g.dart';

@DriftDatabase(tables: [DriftDownloadInfo])
class DriftSoraDatabase extends _$DriftSoraDatabase {
  DriftSoraDatabase([QueryExecutor? executor])
    : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'soradb', native: const DriftNativeOptions());
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

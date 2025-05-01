import 'package:drift/drift.dart';

class DriftDownloadInfo extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get url => text().withLength(max: 2000)();
  TextColumn get folder => text().withLength(max: 255).nullable()();
  DateTimeColumn get updatedAt =>
      dateTime().withDefault(Constant(DateTime.now()))();
}

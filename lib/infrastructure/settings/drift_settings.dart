import 'package:drift/drift.dart';

class DriftSettings extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get config => text()();
  BoolColumn get darkMode => boolean().withDefault(const Constant(false))();
  DateTimeColumn get updatedAt =>
      dateTime().withDefault(Constant(DateTime.now()))();
}

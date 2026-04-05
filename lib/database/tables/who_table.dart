import 'package:drift/drift.dart';

class WhoTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get role => text().nullable()();
  TextColumn get description => text().nullable()();
}

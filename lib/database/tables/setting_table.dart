import 'package:drift/drift.dart';

class SettingTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text().unique()();
  TextColumn get value => text()();
}

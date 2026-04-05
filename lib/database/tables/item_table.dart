import 'package:drift/drift.dart';

class ItemTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  RealColumn get price => real().nullable()();
}

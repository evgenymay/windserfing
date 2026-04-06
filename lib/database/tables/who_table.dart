import 'package:drift/drift.dart';

class ItemTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get phone => integer()();
  TextColumn get name => text().withLength(min: 1)();
  TextColumn get tags => text().nullable()();
  DateTimeColumn get registered => dateTime().nullable()();
}

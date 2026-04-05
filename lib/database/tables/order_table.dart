import 'package:drift/drift.dart';
import 'item_table.dart';

class OrderTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get itemId => integer().references(ItemTable, #id)();
  IntColumn get quantity => integer()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

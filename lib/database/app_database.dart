import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'tables/item_table.dart';
import 'tables/order_table.dart';
import 'tables/setting_table.dart';
import 'tables/who_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [ItemTable, OrderTable, SettingTable, WhoTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'windserfing.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}

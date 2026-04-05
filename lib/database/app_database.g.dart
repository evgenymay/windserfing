// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ItemTableTable extends ItemTable
    with TableInfo<$ItemTableTable, ItemTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
    'price',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, description, price];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ItemTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      price: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}price'],
      ),
    );
  }

  @override
  $ItemTableTable createAlias(String alias) {
    return $ItemTableTable(attachedDatabase, alias);
  }
}

class ItemTableData extends DataClass implements Insertable<ItemTableData> {
  final int id;
  final String name;
  final String? description;
  final double? price;
  const ItemTableData({
    required this.id,
    required this.name,
    this.description,
    this.price,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<double>(price);
    }
    return map;
  }

  ItemTableCompanion toCompanion(bool nullToAbsent) {
    return ItemTableCompanion(
      id: Value(id),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      price: price == null && nullToAbsent
          ? const Value.absent()
          : Value(price),
    );
  }

  factory ItemTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      price: serializer.fromJson<double?>(json['price']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'price': serializer.toJson<double?>(price),
    };
  }

  ItemTableData copyWith({
    int? id,
    String? name,
    Value<String?> description = const Value.absent(),
    Value<double?> price = const Value.absent(),
  }) => ItemTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    description: description.present ? description.value : this.description,
    price: price.present ? price.value : this.price,
  );
  ItemTableData copyWithCompanion(ItemTableCompanion data) {
    return ItemTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      price: data.price.present ? data.price.value : this.price,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, description, price);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.price == this.price);
}

class ItemTableCompanion extends UpdateCompanion<ItemTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> description;
  final Value<double?> price;
  const ItemTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.price = const Value.absent(),
  });
  ItemTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.description = const Value.absent(),
    this.price = const Value.absent(),
  }) : name = Value(name);
  static Insertable<ItemTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<double>? price,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (price != null) 'price': price,
    });
  }

  ItemTableCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? description,
    Value<double?>? price,
  }) {
    return ItemTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }
}

class $OrderTableTable extends OrderTable
    with TableInfo<$OrderTableTable, OrderTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES item_table (id)',
    ),
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [id, itemId, quantity, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<OrderTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OrderTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      itemId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}item_id'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $OrderTableTable createAlias(String alias) {
    return $OrderTableTable(attachedDatabase, alias);
  }
}

class OrderTableData extends DataClass implements Insertable<OrderTableData> {
  final int id;
  final int itemId;
  final int quantity;
  final DateTime createdAt;
  const OrderTableData({
    required this.id,
    required this.itemId,
    required this.quantity,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['item_id'] = Variable<int>(itemId);
    map['quantity'] = Variable<int>(quantity);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  OrderTableCompanion toCompanion(bool nullToAbsent) {
    return OrderTableCompanion(
      id: Value(id),
      itemId: Value(itemId),
      quantity: Value(quantity),
      createdAt: Value(createdAt),
    );
  }

  factory OrderTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderTableData(
      id: serializer.fromJson<int>(json['id']),
      itemId: serializer.fromJson<int>(json['itemId']),
      quantity: serializer.fromJson<int>(json['quantity']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'itemId': serializer.toJson<int>(itemId),
      'quantity': serializer.toJson<int>(quantity),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  OrderTableData copyWith({
    int? id,
    int? itemId,
    int? quantity,
    DateTime? createdAt,
  }) => OrderTableData(
    id: id ?? this.id,
    itemId: itemId ?? this.itemId,
    quantity: quantity ?? this.quantity,
    createdAt: createdAt ?? this.createdAt,
  );
  OrderTableData copyWithCompanion(OrderTableCompanion data) {
    return OrderTableData(
      id: data.id.present ? data.id.value : this.id,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OrderTableData(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('quantity: $quantity, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, itemId, quantity, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderTableData &&
          other.id == this.id &&
          other.itemId == this.itemId &&
          other.quantity == this.quantity &&
          other.createdAt == this.createdAt);
}

class OrderTableCompanion extends UpdateCompanion<OrderTableData> {
  final Value<int> id;
  final Value<int> itemId;
  final Value<int> quantity;
  final Value<DateTime> createdAt;
  const OrderTableCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  OrderTableCompanion.insert({
    this.id = const Value.absent(),
    required int itemId,
    required int quantity,
    this.createdAt = const Value.absent(),
  }) : itemId = Value(itemId),
       quantity = Value(quantity);
  static Insertable<OrderTableData> custom({
    Expression<int>? id,
    Expression<int>? itemId,
    Expression<int>? quantity,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (quantity != null) 'quantity': quantity,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  OrderTableCompanion copyWith({
    Value<int>? id,
    Value<int>? itemId,
    Value<int>? quantity,
    Value<DateTime>? createdAt,
  }) {
    return OrderTableCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      quantity: quantity ?? this.quantity,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderTableCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('quantity: $quantity, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $SettingTableTable extends SettingTable
    with TableInfo<$SettingTableTable, SettingTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'setting_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SettingTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SettingTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $SettingTableTable createAlias(String alias) {
    return $SettingTableTable(attachedDatabase, alias);
  }
}

class SettingTableData extends DataClass
    implements Insertable<SettingTableData> {
  final int id;
  final String key;
  final String value;
  const SettingTableData({
    required this.id,
    required this.key,
    required this.value,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  SettingTableCompanion toCompanion(bool nullToAbsent) {
    return SettingTableCompanion(
      id: Value(id),
      key: Value(key),
      value: Value(value),
    );
  }

  factory SettingTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingTableData(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  SettingTableData copyWith({int? id, String? key, String? value}) =>
      SettingTableData(
        id: id ?? this.id,
        key: key ?? this.key,
        value: value ?? this.value,
      );
  SettingTableData copyWithCompanion(SettingTableCompanion data) {
    return SettingTableData(
      id: data.id.present ? data.id.value : this.id,
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SettingTableData(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingTableData &&
          other.id == this.id &&
          other.key == this.key &&
          other.value == this.value);
}

class SettingTableCompanion extends UpdateCompanion<SettingTableData> {
  final Value<int> id;
  final Value<String> key;
  final Value<String> value;
  const SettingTableCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.value = const Value.absent(),
  });
  SettingTableCompanion.insert({
    this.id = const Value.absent(),
    required String key,
    required String value,
  }) : key = Value(key),
       value = Value(value);
  static Insertable<SettingTableData> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (value != null) 'value': value,
    });
  }

  SettingTableCompanion copyWith({
    Value<int>? id,
    Value<String>? key,
    Value<String>? value,
  }) {
    return SettingTableCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingTableCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $WhoTableTable extends WhoTable
    with TableInfo<$WhoTableTable, WhoTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WhoTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumn<String> role = GeneratedColumn<String>(
    'role',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, role, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'who_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<WhoTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('role')) {
      context.handle(
        _roleMeta,
        role.isAcceptableOrUnknown(data['role']!, _roleMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WhoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WhoTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      role: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}role'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
    );
  }

  @override
  $WhoTableTable createAlias(String alias) {
    return $WhoTableTable(attachedDatabase, alias);
  }
}

class WhoTableData extends DataClass implements Insertable<WhoTableData> {
  final int id;
  final String name;
  final String? role;
  final String? description;
  const WhoTableData({
    required this.id,
    required this.name,
    this.role,
    this.description,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || role != null) {
      map['role'] = Variable<String>(role);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  WhoTableCompanion toCompanion(bool nullToAbsent) {
    return WhoTableCompanion(
      id: Value(id),
      name: Value(name),
      role: role == null && nullToAbsent ? const Value.absent() : Value(role),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory WhoTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WhoTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      role: serializer.fromJson<String?>(json['role']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'role': serializer.toJson<String?>(role),
      'description': serializer.toJson<String?>(description),
    };
  }

  WhoTableData copyWith({
    int? id,
    String? name,
    Value<String?> role = const Value.absent(),
    Value<String?> description = const Value.absent(),
  }) => WhoTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    role: role.present ? role.value : this.role,
    description: description.present ? description.value : this.description,
  );
  WhoTableData copyWithCompanion(WhoTableCompanion data) {
    return WhoTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      role: data.role.present ? data.role.value : this.role,
      description: data.description.present
          ? data.description.value
          : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WhoTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('role: $role, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, role, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WhoTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.role == this.role &&
          other.description == this.description);
}

class WhoTableCompanion extends UpdateCompanion<WhoTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> role;
  final Value<String?> description;
  const WhoTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.role = const Value.absent(),
    this.description = const Value.absent(),
  });
  WhoTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.role = const Value.absent(),
    this.description = const Value.absent(),
  }) : name = Value(name);
  static Insertable<WhoTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? role,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (role != null) 'role': role,
      if (description != null) 'description': description,
    });
  }

  WhoTableCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? role,
    Value<String?>? description,
  }) {
    return WhoTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      role: role ?? this.role,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WhoTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('role: $role, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ItemTableTable itemTable = $ItemTableTable(this);
  late final $OrderTableTable orderTable = $OrderTableTable(this);
  late final $SettingTableTable settingTable = $SettingTableTable(this);
  late final $WhoTableTable whoTable = $WhoTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    itemTable,
    orderTable,
    settingTable,
    whoTable,
  ];
}

typedef $$ItemTableTableCreateCompanionBuilder =
    ItemTableCompanion Function({
      Value<int> id,
      required String name,
      Value<String?> description,
      Value<double?> price,
    });
typedef $$ItemTableTableUpdateCompanionBuilder =
    ItemTableCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String?> description,
      Value<double?> price,
    });

final class $$ItemTableTableReferences
    extends BaseReferences<_$AppDatabase, $ItemTableTable, ItemTableData> {
  $$ItemTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$OrderTableTable, List<OrderTableData>>
  _orderTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.orderTable,
    aliasName: $_aliasNameGenerator(db.itemTable.id, db.orderTable.itemId),
  );

  $$OrderTableTableProcessedTableManager get orderTableRefs {
    final manager = $$OrderTableTableTableManager(
      $_db,
      $_db.orderTable,
    ).filter((f) => f.itemId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_orderTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ItemTableTableFilterComposer
    extends Composer<_$AppDatabase, $ItemTableTable> {
  $$ItemTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> orderTableRefs(
    Expression<bool> Function($$OrderTableTableFilterComposer f) f,
  ) {
    final $$OrderTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.orderTable,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OrderTableTableFilterComposer(
            $db: $db,
            $table: $db.orderTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ItemTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemTableTable> {
  $$ItemTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ItemTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemTableTable> {
  $$ItemTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  Expression<T> orderTableRefs<T extends Object>(
    Expression<T> Function($$OrderTableTableAnnotationComposer a) f,
  ) {
    final $$OrderTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.orderTable,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OrderTableTableAnnotationComposer(
            $db: $db,
            $table: $db.orderTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ItemTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ItemTableTable,
          ItemTableData,
          $$ItemTableTableFilterComposer,
          $$ItemTableTableOrderingComposer,
          $$ItemTableTableAnnotationComposer,
          $$ItemTableTableCreateCompanionBuilder,
          $$ItemTableTableUpdateCompanionBuilder,
          (ItemTableData, $$ItemTableTableReferences),
          ItemTableData,
          PrefetchHooks Function({bool orderTableRefs})
        > {
  $$ItemTableTableTableManager(_$AppDatabase db, $ItemTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<double?> price = const Value.absent(),
              }) => ItemTableCompanion(
                id: id,
                name: name,
                description: description,
                price: price,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<String?> description = const Value.absent(),
                Value<double?> price = const Value.absent(),
              }) => ItemTableCompanion.insert(
                id: id,
                name: name,
                description: description,
                price: price,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ItemTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({orderTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (orderTableRefs) db.orderTable],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (orderTableRefs)
                    await $_getPrefetchedData<
                      ItemTableData,
                      $ItemTableTable,
                      OrderTableData
                    >(
                      currentTable: table,
                      referencedTable: $$ItemTableTableReferences
                          ._orderTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ItemTableTableReferences(
                            db,
                            table,
                            p0,
                          ).orderTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.itemId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ItemTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ItemTableTable,
      ItemTableData,
      $$ItemTableTableFilterComposer,
      $$ItemTableTableOrderingComposer,
      $$ItemTableTableAnnotationComposer,
      $$ItemTableTableCreateCompanionBuilder,
      $$ItemTableTableUpdateCompanionBuilder,
      (ItemTableData, $$ItemTableTableReferences),
      ItemTableData,
      PrefetchHooks Function({bool orderTableRefs})
    >;
typedef $$OrderTableTableCreateCompanionBuilder =
    OrderTableCompanion Function({
      Value<int> id,
      required int itemId,
      required int quantity,
      Value<DateTime> createdAt,
    });
typedef $$OrderTableTableUpdateCompanionBuilder =
    OrderTableCompanion Function({
      Value<int> id,
      Value<int> itemId,
      Value<int> quantity,
      Value<DateTime> createdAt,
    });

final class $$OrderTableTableReferences
    extends BaseReferences<_$AppDatabase, $OrderTableTable, OrderTableData> {
  $$OrderTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ItemTableTable _itemIdTable(_$AppDatabase db) => db.itemTable
      .createAlias($_aliasNameGenerator(db.orderTable.itemId, db.itemTable.id));

  $$ItemTableTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$ItemTableTableTableManager(
      $_db,
      $_db.itemTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$OrderTableTableFilterComposer
    extends Composer<_$AppDatabase, $OrderTableTable> {
  $$OrderTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$ItemTableTableFilterComposer get itemId {
    final $$ItemTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.itemTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemTableTableFilterComposer(
            $db: $db,
            $table: $db.itemTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$OrderTableTableOrderingComposer
    extends Composer<_$AppDatabase, $OrderTableTable> {
  $$OrderTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$ItemTableTableOrderingComposer get itemId {
    final $$ItemTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.itemTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemTableTableOrderingComposer(
            $db: $db,
            $table: $db.itemTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$OrderTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $OrderTableTable> {
  $$OrderTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ItemTableTableAnnotationComposer get itemId {
    final $$ItemTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.itemTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemTableTableAnnotationComposer(
            $db: $db,
            $table: $db.itemTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$OrderTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $OrderTableTable,
          OrderTableData,
          $$OrderTableTableFilterComposer,
          $$OrderTableTableOrderingComposer,
          $$OrderTableTableAnnotationComposer,
          $$OrderTableTableCreateCompanionBuilder,
          $$OrderTableTableUpdateCompanionBuilder,
          (OrderTableData, $$OrderTableTableReferences),
          OrderTableData,
          PrefetchHooks Function({bool itemId})
        > {
  $$OrderTableTableTableManager(_$AppDatabase db, $OrderTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OrderTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OrderTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OrderTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> itemId = const Value.absent(),
                Value<int> quantity = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => OrderTableCompanion(
                id: id,
                itemId: itemId,
                quantity: quantity,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int itemId,
                required int quantity,
                Value<DateTime> createdAt = const Value.absent(),
              }) => OrderTableCompanion.insert(
                id: id,
                itemId: itemId,
                quantity: quantity,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$OrderTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({itemId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (itemId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.itemId,
                                referencedTable: $$OrderTableTableReferences
                                    ._itemIdTable(db),
                                referencedColumn: $$OrderTableTableReferences
                                    ._itemIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$OrderTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $OrderTableTable,
      OrderTableData,
      $$OrderTableTableFilterComposer,
      $$OrderTableTableOrderingComposer,
      $$OrderTableTableAnnotationComposer,
      $$OrderTableTableCreateCompanionBuilder,
      $$OrderTableTableUpdateCompanionBuilder,
      (OrderTableData, $$OrderTableTableReferences),
      OrderTableData,
      PrefetchHooks Function({bool itemId})
    >;
typedef $$SettingTableTableCreateCompanionBuilder =
    SettingTableCompanion Function({
      Value<int> id,
      required String key,
      required String value,
    });
typedef $$SettingTableTableUpdateCompanionBuilder =
    SettingTableCompanion Function({
      Value<int> id,
      Value<String> key,
      Value<String> value,
    });

class $$SettingTableTableFilterComposer
    extends Composer<_$AppDatabase, $SettingTableTable> {
  $$SettingTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SettingTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SettingTableTable> {
  $$SettingTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SettingTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SettingTableTable> {
  $$SettingTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$SettingTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SettingTableTable,
          SettingTableData,
          $$SettingTableTableFilterComposer,
          $$SettingTableTableOrderingComposer,
          $$SettingTableTableAnnotationComposer,
          $$SettingTableTableCreateCompanionBuilder,
          $$SettingTableTableUpdateCompanionBuilder,
          (
            SettingTableData,
            BaseReferences<_$AppDatabase, $SettingTableTable, SettingTableData>,
          ),
          SettingTableData,
          PrefetchHooks Function()
        > {
  $$SettingTableTableTableManager(_$AppDatabase db, $SettingTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> key = const Value.absent(),
                Value<String> value = const Value.absent(),
              }) => SettingTableCompanion(id: id, key: key, value: value),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String key,
                required String value,
              }) =>
                  SettingTableCompanion.insert(id: id, key: key, value: value),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SettingTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SettingTableTable,
      SettingTableData,
      $$SettingTableTableFilterComposer,
      $$SettingTableTableOrderingComposer,
      $$SettingTableTableAnnotationComposer,
      $$SettingTableTableCreateCompanionBuilder,
      $$SettingTableTableUpdateCompanionBuilder,
      (
        SettingTableData,
        BaseReferences<_$AppDatabase, $SettingTableTable, SettingTableData>,
      ),
      SettingTableData,
      PrefetchHooks Function()
    >;
typedef $$WhoTableTableCreateCompanionBuilder =
    WhoTableCompanion Function({
      Value<int> id,
      required String name,
      Value<String?> role,
      Value<String?> description,
    });
typedef $$WhoTableTableUpdateCompanionBuilder =
    WhoTableCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String?> role,
      Value<String?> description,
    });

class $$WhoTableTableFilterComposer
    extends Composer<_$AppDatabase, $WhoTableTable> {
  $$WhoTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );
}

class $$WhoTableTableOrderingComposer
    extends Composer<_$AppDatabase, $WhoTableTable> {
  $$WhoTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WhoTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $WhoTableTable> {
  $$WhoTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get role =>
      $composableBuilder(column: $table.role, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );
}

class $$WhoTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WhoTableTable,
          WhoTableData,
          $$WhoTableTableFilterComposer,
          $$WhoTableTableOrderingComposer,
          $$WhoTableTableAnnotationComposer,
          $$WhoTableTableCreateCompanionBuilder,
          $$WhoTableTableUpdateCompanionBuilder,
          (
            WhoTableData,
            BaseReferences<_$AppDatabase, $WhoTableTable, WhoTableData>,
          ),
          WhoTableData,
          PrefetchHooks Function()
        > {
  $$WhoTableTableTableManager(_$AppDatabase db, $WhoTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WhoTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WhoTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WhoTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> role = const Value.absent(),
                Value<String?> description = const Value.absent(),
              }) => WhoTableCompanion(
                id: id,
                name: name,
                role: role,
                description: description,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<String?> role = const Value.absent(),
                Value<String?> description = const Value.absent(),
              }) => WhoTableCompanion.insert(
                id: id,
                name: name,
                role: role,
                description: description,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$WhoTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WhoTableTable,
      WhoTableData,
      $$WhoTableTableFilterComposer,
      $$WhoTableTableOrderingComposer,
      $$WhoTableTableAnnotationComposer,
      $$WhoTableTableCreateCompanionBuilder,
      $$WhoTableTableUpdateCompanionBuilder,
      (
        WhoTableData,
        BaseReferences<_$AppDatabase, $WhoTableTable, WhoTableData>,
      ),
      WhoTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ItemTableTableTableManager get itemTable =>
      $$ItemTableTableTableManager(_db, _db.itemTable);
  $$OrderTableTableTableManager get orderTable =>
      $$OrderTableTableTableManager(_db, _db.orderTable);
  $$SettingTableTableTableManager get settingTable =>
      $$SettingTableTableTableManager(_db, _db.settingTable);
  $$WhoTableTableTableManager get whoTable =>
      $$WhoTableTableTableManager(_db, _db.whoTable);
}

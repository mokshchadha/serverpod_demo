/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class LocationFreights extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  LocationFreights._({
    int? id,
    required this.fromLoc,
    required this.toLoc,
    required this.distance,
    required this.t25,
    required this.t18,
    required this.t5,
    required this.t42,
    required this.t35,
    required this.t30,
    required this.t12,
    required this.createdAt,
    required this.updatedAt,
  }) : super(id);

  factory LocationFreights({
    int? id,
    required String fromLoc,
    required String toLoc,
    required int distance,
    required int t25,
    required int t18,
    required int t5,
    required int t42,
    required int t35,
    required int t30,
    required int t12,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _LocationFreightsImpl;

  factory LocationFreights.fromJson(Map<String, dynamic> jsonSerialization) {
    return LocationFreights(
      id: jsonSerialization['id'] as int?,
      fromLoc: jsonSerialization['fromLoc'] as String,
      toLoc: jsonSerialization['toLoc'] as String,
      distance: jsonSerialization['distance'] as int,
      t25: jsonSerialization['t25'] as int,
      t18: jsonSerialization['t18'] as int,
      t5: jsonSerialization['t5'] as int,
      t42: jsonSerialization['t42'] as int,
      t35: jsonSerialization['t35'] as int,
      t30: jsonSerialization['t30'] as int,
      t12: jsonSerialization['t12'] as int,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = LocationFreightsTable();

  static const db = LocationFreightsRepository._();

  String fromLoc;

  String toLoc;

  int distance;

  int t25;

  int t18;

  int t5;

  int t42;

  int t35;

  int t30;

  int t12;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  LocationFreights copyWith({
    int? id,
    String? fromLoc,
    String? toLoc,
    int? distance,
    int? t25,
    int? t18,
    int? t5,
    int? t42,
    int? t35,
    int? t30,
    int? t12,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'fromLoc': fromLoc,
      'toLoc': toLoc,
      'distance': distance,
      't25': t25,
      't18': t18,
      't5': t5,
      't42': t42,
      't35': t35,
      't30': t30,
      't12': t12,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'fromLoc': fromLoc,
      'toLoc': toLoc,
      'distance': distance,
      't25': t25,
      't18': t18,
      't5': t5,
      't42': t42,
      't35': t35,
      't30': t30,
      't12': t12,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static LocationFreightsInclude include() {
    return LocationFreightsInclude._();
  }

  static LocationFreightsIncludeList includeList({
    _i1.WhereExpressionBuilder<LocationFreightsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LocationFreightsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationFreightsTable>? orderByList,
    LocationFreightsInclude? include,
  }) {
    return LocationFreightsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(LocationFreights.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(LocationFreights.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LocationFreightsImpl extends LocationFreights {
  _LocationFreightsImpl({
    int? id,
    required String fromLoc,
    required String toLoc,
    required int distance,
    required int t25,
    required int t18,
    required int t5,
    required int t42,
    required int t35,
    required int t30,
    required int t12,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          fromLoc: fromLoc,
          toLoc: toLoc,
          distance: distance,
          t25: t25,
          t18: t18,
          t5: t5,
          t42: t42,
          t35: t35,
          t30: t30,
          t12: t12,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  LocationFreights copyWith({
    Object? id = _Undefined,
    String? fromLoc,
    String? toLoc,
    int? distance,
    int? t25,
    int? t18,
    int? t5,
    int? t42,
    int? t35,
    int? t30,
    int? t12,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return LocationFreights(
      id: id is int? ? id : this.id,
      fromLoc: fromLoc ?? this.fromLoc,
      toLoc: toLoc ?? this.toLoc,
      distance: distance ?? this.distance,
      t25: t25 ?? this.t25,
      t18: t18 ?? this.t18,
      t5: t5 ?? this.t5,
      t42: t42 ?? this.t42,
      t35: t35 ?? this.t35,
      t30: t30 ?? this.t30,
      t12: t12 ?? this.t12,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class LocationFreightsTable extends _i1.Table {
  LocationFreightsTable({super.tableRelation}) : super(tableName: 'freights') {
    fromLoc = _i1.ColumnString(
      'fromLoc',
      this,
    );
    toLoc = _i1.ColumnString(
      'toLoc',
      this,
    );
    distance = _i1.ColumnInt(
      'distance',
      this,
    );
    t25 = _i1.ColumnInt(
      't25',
      this,
    );
    t18 = _i1.ColumnInt(
      't18',
      this,
    );
    t5 = _i1.ColumnInt(
      't5',
      this,
    );
    t42 = _i1.ColumnInt(
      't42',
      this,
    );
    t35 = _i1.ColumnInt(
      't35',
      this,
    );
    t30 = _i1.ColumnInt(
      't30',
      this,
    );
    t12 = _i1.ColumnInt(
      't12',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final _i1.ColumnString fromLoc;

  late final _i1.ColumnString toLoc;

  late final _i1.ColumnInt distance;

  late final _i1.ColumnInt t25;

  late final _i1.ColumnInt t18;

  late final _i1.ColumnInt t5;

  late final _i1.ColumnInt t42;

  late final _i1.ColumnInt t35;

  late final _i1.ColumnInt t30;

  late final _i1.ColumnInt t12;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        fromLoc,
        toLoc,
        distance,
        t25,
        t18,
        t5,
        t42,
        t35,
        t30,
        t12,
        createdAt,
        updatedAt,
      ];
}

class LocationFreightsInclude extends _i1.IncludeObject {
  LocationFreightsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => LocationFreights.t;
}

class LocationFreightsIncludeList extends _i1.IncludeList {
  LocationFreightsIncludeList._({
    _i1.WhereExpressionBuilder<LocationFreightsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(LocationFreights.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => LocationFreights.t;
}

class LocationFreightsRepository {
  const LocationFreightsRepository._();

  Future<List<LocationFreights>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationFreightsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LocationFreightsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationFreightsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<LocationFreights>(
      where: where?.call(LocationFreights.t),
      orderBy: orderBy?.call(LocationFreights.t),
      orderByList: orderByList?.call(LocationFreights.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<LocationFreights?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationFreightsTable>? where,
    int? offset,
    _i1.OrderByBuilder<LocationFreightsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationFreightsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<LocationFreights>(
      where: where?.call(LocationFreights.t),
      orderBy: orderBy?.call(LocationFreights.t),
      orderByList: orderByList?.call(LocationFreights.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<LocationFreights?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<LocationFreights>(
      id,
      transaction: transaction,
    );
  }

  Future<List<LocationFreights>> insert(
    _i1.Session session,
    List<LocationFreights> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<LocationFreights>(
      rows,
      transaction: transaction,
    );
  }

  Future<LocationFreights> insertRow(
    _i1.Session session,
    LocationFreights row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<LocationFreights>(
      row,
      transaction: transaction,
    );
  }

  Future<List<LocationFreights>> update(
    _i1.Session session,
    List<LocationFreights> rows, {
    _i1.ColumnSelections<LocationFreightsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<LocationFreights>(
      rows,
      columns: columns?.call(LocationFreights.t),
      transaction: transaction,
    );
  }

  Future<LocationFreights> updateRow(
    _i1.Session session,
    LocationFreights row, {
    _i1.ColumnSelections<LocationFreightsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<LocationFreights>(
      row,
      columns: columns?.call(LocationFreights.t),
      transaction: transaction,
    );
  }

  Future<List<LocationFreights>> delete(
    _i1.Session session,
    List<LocationFreights> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<LocationFreights>(
      rows,
      transaction: transaction,
    );
  }

  Future<LocationFreights> deleteRow(
    _i1.Session session,
    LocationFreights row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<LocationFreights>(
      row,
      transaction: transaction,
    );
  }

  Future<List<LocationFreights>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LocationFreightsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<LocationFreights>(
      where: where(LocationFreights.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationFreightsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<LocationFreights>(
      where: where?.call(LocationFreights.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

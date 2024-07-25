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

abstract class Location extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Location._({
    int? id,
    required this.type,
    required this.name,
    required this.state,
    required this.parentToChildDistance,
    required this.mappedLocationId,
    required this.margin,
    required this.freight,
    required this.updatedAt,
  }) : super(id);

  factory Location({
    int? id,
    required String type,
    required String name,
    required String state,
    required String parentToChildDistance,
    required String mappedLocationId,
    required int margin,
    required int freight,
    required DateTime updatedAt,
  }) = _LocationImpl;

  factory Location.fromJson(Map<String, dynamic> jsonSerialization) {
    return Location(
      id: jsonSerialization['id'] as int?,
      type: jsonSerialization['type'] as String,
      name: jsonSerialization['name'] as String,
      state: jsonSerialization['state'] as String,
      parentToChildDistance:
          jsonSerialization['parentToChildDistance'] as String,
      mappedLocationId: jsonSerialization['mappedLocationId'] as String,
      margin: jsonSerialization['margin'] as int,
      freight: jsonSerialization['freight'] as int,
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = LocationTable();

  static const db = LocationRepository._();

  String type;

  String name;

  String state;

  String parentToChildDistance;

  String mappedLocationId;

  int margin;

  int freight;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  Location copyWith({
    int? id,
    String? type,
    String? name,
    String? state,
    String? parentToChildDistance,
    String? mappedLocationId,
    int? margin,
    int? freight,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'type': type,
      'name': name,
      'state': state,
      'parentToChildDistance': parentToChildDistance,
      'mappedLocationId': mappedLocationId,
      'margin': margin,
      'freight': freight,
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'type': type,
      'name': name,
      'state': state,
      'parentToChildDistance': parentToChildDistance,
      'mappedLocationId': mappedLocationId,
      'margin': margin,
      'freight': freight,
      'updatedAt': updatedAt.toJson(),
    };
  }

  static LocationInclude include() {
    return LocationInclude._();
  }

  static LocationIncludeList includeList({
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LocationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationTable>? orderByList,
    LocationInclude? include,
  }) {
    return LocationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Location.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Location.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LocationImpl extends Location {
  _LocationImpl({
    int? id,
    required String type,
    required String name,
    required String state,
    required String parentToChildDistance,
    required String mappedLocationId,
    required int margin,
    required int freight,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          type: type,
          name: name,
          state: state,
          parentToChildDistance: parentToChildDistance,
          mappedLocationId: mappedLocationId,
          margin: margin,
          freight: freight,
          updatedAt: updatedAt,
        );

  @override
  Location copyWith({
    Object? id = _Undefined,
    String? type,
    String? name,
    String? state,
    String? parentToChildDistance,
    String? mappedLocationId,
    int? margin,
    int? freight,
    DateTime? updatedAt,
  }) {
    return Location(
      id: id is int? ? id : this.id,
      type: type ?? this.type,
      name: name ?? this.name,
      state: state ?? this.state,
      parentToChildDistance:
          parentToChildDistance ?? this.parentToChildDistance,
      mappedLocationId: mappedLocationId ?? this.mappedLocationId,
      margin: margin ?? this.margin,
      freight: freight ?? this.freight,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class LocationTable extends _i1.Table {
  LocationTable({super.tableRelation}) : super(tableName: 'locations') {
    type = _i1.ColumnString(
      'type',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    state = _i1.ColumnString(
      'state',
      this,
    );
    parentToChildDistance = _i1.ColumnString(
      'parentToChildDistance',
      this,
    );
    mappedLocationId = _i1.ColumnString(
      'mappedLocationId',
      this,
    );
    margin = _i1.ColumnInt(
      'margin',
      this,
    );
    freight = _i1.ColumnInt(
      'freight',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final _i1.ColumnString type;

  late final _i1.ColumnString name;

  late final _i1.ColumnString state;

  late final _i1.ColumnString parentToChildDistance;

  late final _i1.ColumnString mappedLocationId;

  late final _i1.ColumnInt margin;

  late final _i1.ColumnInt freight;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        type,
        name,
        state,
        parentToChildDistance,
        mappedLocationId,
        margin,
        freight,
        updatedAt,
      ];
}

class LocationInclude extends _i1.IncludeObject {
  LocationInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Location.t;
}

class LocationIncludeList extends _i1.IncludeList {
  LocationIncludeList._({
    _i1.WhereExpressionBuilder<LocationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Location.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Location.t;
}

class LocationRepository {
  const LocationRepository._();

  Future<List<Location>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LocationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Location>(
      where: where?.call(Location.t),
      orderBy: orderBy?.call(Location.t),
      orderByList: orderByList?.call(Location.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Location?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? offset,
    _i1.OrderByBuilder<LocationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Location>(
      where: where?.call(Location.t),
      orderBy: orderBy?.call(Location.t),
      orderByList: orderByList?.call(Location.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Location?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Location>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Location>> insert(
    _i1.Session session,
    List<Location> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Location>(
      rows,
      transaction: transaction,
    );
  }

  Future<Location> insertRow(
    _i1.Session session,
    Location row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Location>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Location>> update(
    _i1.Session session,
    List<Location> rows, {
    _i1.ColumnSelections<LocationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Location>(
      rows,
      columns: columns?.call(Location.t),
      transaction: transaction,
    );
  }

  Future<Location> updateRow(
    _i1.Session session,
    Location row, {
    _i1.ColumnSelections<LocationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Location>(
      row,
      columns: columns?.call(Location.t),
      transaction: transaction,
    );
  }

  Future<List<Location>> delete(
    _i1.Session session,
    List<Location> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Location>(
      rows,
      transaction: transaction,
    );
  }

  Future<Location> deleteRow(
    _i1.Session session,
    Location row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Location>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Location>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LocationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Location>(
      where: where(Location.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Location>(
      where: where?.call(Location.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class LocationFreights implements _i1.SerializableModel {
  LocationFreights._({
    this.id,
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
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

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

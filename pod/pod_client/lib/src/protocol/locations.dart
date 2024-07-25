/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Location implements _i1.SerializableModel {
  Location._({
    this.id,
    required this.type,
    required this.name,
    required this.state,
    required this.parentToChildDistance,
    required this.mappedLocationId,
    required this.margin,
    required this.freight,
    required this.updatedAt,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String type;

  String name;

  String state;

  String parentToChildDistance;

  String mappedLocationId;

  int margin;

  int freight;

  DateTime updatedAt;

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

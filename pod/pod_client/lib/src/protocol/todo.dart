/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

/// Holds a note with a text written by the user.
abstract class Todo implements _i1.SerializableModel {
  Todo._({
    this.id,
    required this.title,
    required this.isCompleted,
    required this.createdAtTime,
    required this.description,
  });

  factory Todo({
    int? id,
    required String title,
    required bool isCompleted,
    required DateTime createdAtTime,
    required String description,
  }) = _TodoImpl;

  factory Todo.fromJson(Map<String, dynamic> jsonSerialization) {
    return Todo(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      isCompleted: jsonSerialization['isCompleted'] as bool,
      createdAtTime: _i1.DateTimeJsonExtension.fromJson(
          jsonSerialization['createdAtTime']),
      description: jsonSerialization['description'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The contents of the table.
  String title;

  bool isCompleted;

  DateTime createdAtTime;

  String description;

  Todo copyWith({
    int? id,
    String? title,
    bool? isCompleted,
    DateTime? createdAtTime,
    String? description,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'isCompleted': isCompleted,
      'createdAtTime': createdAtTime.toJson(),
      'description': description,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TodoImpl extends Todo {
  _TodoImpl({
    int? id,
    required String title,
    required bool isCompleted,
    required DateTime createdAtTime,
    required String description,
  }) : super._(
          id: id,
          title: title,
          isCompleted: isCompleted,
          createdAtTime: createdAtTime,
          description: description,
        );

  @override
  Todo copyWith({
    Object? id = _Undefined,
    String? title,
    bool? isCompleted,
    DateTime? createdAtTime,
    String? description,
  }) {
    return Todo(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
      createdAtTime: createdAtTime ?? this.createdAtTime,
      description: description ?? this.description,
    );
  }
}

/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'example.dart' as _i2;
import 'freights.dart' as _i3;
import 'locations.dart' as _i4;
import 'todo.dart' as _i5;
import 'package:pod_client/src/protocol/freights.dart' as _i6;
import 'package:pod_client/src/protocol/locations.dart' as _i7;
export 'example.dart';
export 'freights.dart';
export 'locations.dart';
export 'todo.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Example) {
      return _i2.Example.fromJson(data) as T;
    }
    if (t == _i3.LocationFreights) {
      return _i3.LocationFreights.fromJson(data) as T;
    }
    if (t == _i4.Location) {
      return _i4.Location.fromJson(data) as T;
    }
    if (t == _i5.Todo) {
      return _i5.Todo.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Example?>()) {
      return (data != null ? _i2.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.LocationFreights?>()) {
      return (data != null ? _i3.LocationFreights.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Location?>()) {
      return (data != null ? _i4.Location.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Todo?>()) {
      return (data != null ? _i5.Todo.fromJson(data) : null) as T;
    }
    if (t == List<_i6.LocationFreights>) {
      return (data as List)
          .map((e) => deserialize<_i6.LocationFreights>(e))
          .toList() as dynamic;
    }
    if (t == List<_i7.Location>) {
      return (data as List).map((e) => deserialize<_i7.Location>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Example) {
      return 'Example';
    }
    if (data is _i3.LocationFreights) {
      return 'LocationFreights';
    }
    if (data is _i4.Location) {
      return 'Location';
    }
    if (data is _i5.Todo) {
      return 'Todo';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Example') {
      return deserialize<_i2.Example>(data['data']);
    }
    if (data['className'] == 'LocationFreights') {
      return deserialize<_i3.LocationFreights>(data['data']);
    }
    if (data['className'] == 'Location') {
      return deserialize<_i4.Location>(data['data']);
    }
    if (data['className'] == 'Todo') {
      return deserialize<_i5.Todo>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}

/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:pod_client/src/protocol/locations.dart' as _i3;
import 'package:pod_client/src/protocol/freights.dart' as _i4;
import 'package:pod_client/src/protocol/todo.dart' as _i5;
import 'protocol.dart' as _i6;

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointLocation extends _i1.EndpointRef {
  EndpointLocation(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'location';

  _i2.Future<void> createLocation(_i3.Location newLocation) =>
      caller.callServerEndpoint<void>(
        'location',
        'createLocation',
        {'newLocation': newLocation},
      );

  _i2.Future<List<_i4.LocationFreights>> createEmptyFreightsForLocation(
          _i3.Location loc) =>
      caller.callServerEndpoint<List<_i4.LocationFreights>>(
        'location',
        'createEmptyFreightsForLocation',
        {'loc': loc},
      );

  _i2.Future<List<_i3.Location>> getLocations() =>
      caller.callServerEndpoint<List<_i3.Location>>(
        'location',
        'getLocations',
        {},
      );

  _i2.Future<void> deleteLocation(int id) => caller.callServerEndpoint<void>(
        'location',
        'deleteLocation',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointTodo extends _i1.EndpointRef {
  EndpointTodo(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'todo';

  _i2.Future<void> createTodo(_i5.Todo newTodo) =>
      caller.callServerEndpoint<void>(
        'todo',
        'createTodo',
        {'newTodo': newTodo},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
  }) : super(
          host,
          _i6.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
        ) {
    example = EndpointExample(this);
    location = EndpointLocation(this);
    todo = EndpointTodo(this);
  }

  late final EndpointExample example;

  late final EndpointLocation location;

  late final EndpointTodo todo;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'location': location,
        'todo': todo,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}

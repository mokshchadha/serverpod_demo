/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/location_endpoint.dart' as _i3;
import '../endpoints/todo_endpoint.dart' as _i4;
import 'package:pod_server/src/generated/locations.dart' as _i5;
import 'package:pod_server/src/generated/todo.dart' as _i6;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'location': _i3.LocationEndpoint()
        ..initialize(
          server,
          'location',
          null,
        ),
      'todo': _i4.TodoEndpoint()
        ..initialize(
          server,
          'todo',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['location'] = _i1.EndpointConnector(
      name: 'location',
      endpoint: endpoints['location']!,
      methodConnectors: {
        'createLocation': _i1.MethodConnector(
          name: 'createLocation',
          params: {
            'newLocation': _i1.ParameterDescription(
              name: 'newLocation',
              type: _i1.getType<_i5.Location>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['location'] as _i3.LocationEndpoint).createLocation(
            session,
            params['newLocation'],
          ),
        ),
        'getLocations': _i1.MethodConnector(
          name: 'getLocations',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['location'] as _i3.LocationEndpoint)
                  .getLocations(session),
        ),
      },
    );
    connectors['todo'] = _i1.EndpointConnector(
      name: 'todo',
      endpoint: endpoints['todo']!,
      methodConnectors: {
        'createTodo': _i1.MethodConnector(
          name: 'createTodo',
          params: {
            'newTodo': _i1.ParameterDescription(
              name: 'newTodo',
              type: _i1.getType<_i6.Todo>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['todo'] as _i4.TodoEndpoint).createTodo(
            session,
            params['newTodo'],
          ),
        )
      },
    );
  }
}

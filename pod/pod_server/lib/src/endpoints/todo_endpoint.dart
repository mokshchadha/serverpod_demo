import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class TodoEndpoint extends Endpoint {
  Future<void> createTodo(Session session, Todo newTodo) {
    return Todo.db.insert(session, [newTodo]);
  }
}

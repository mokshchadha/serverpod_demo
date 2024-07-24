import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class TodosEndpoint extends Endpoint {
  Future<void> createTodo(Session session, Todo newTodo) {
    print("calling todos");
    return Todo.db.insert(session, [newTodo]);
  }
}

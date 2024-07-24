import 'package:mysql1/mysql1.dart';

class Database {
  static final Database _instance = Database._internal();
  late MySqlConnection connection;

  factory Database() {
    return _instance;
  }

  Database._internal();

  Future<void> connect() async {
    var settings = ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'my_user',
      password: 'my_password',
      db: 'wappadmin',
    );

    connection = await MySqlConnection.connect(settings);
  }

  Future<void> close() async {
    await connection.close();
  }
}

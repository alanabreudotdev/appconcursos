import 'package:eusereiaprovado/app/core/services/dbConnection_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sqflite/sqflite.dart';

class DbConnectionRepository extends Disposable {
  final DbConnectionService _connection;

  

  static Database _database;

  DbConnectionRepository(this._connection);

  //dispose will be called automatically
  @override
  void dispose() {}
}

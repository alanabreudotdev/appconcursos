
import 'package:flutter_modular/flutter_modular.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbConnectionService extends Disposable {
//QUESTION TABLE/COLUMNS
  final String questionTable = "questionTable";
  final String idColumn = "idColumn";
  final String questionIdColumn = "questionIdColumn";
  final String acertouColumn = "acertouColumn"; //0 para errou | 1 para acertou
  final String userIdColumn = "userIdColumn";
  final String nameCategoryColumn = "nameCategoryColumn";
  final String timeColumn = "timeColumn";

  Database database;

  setDatabase() async {
    //GET THE APPLICATION DOCUMENT DIRECTORY
    var dir = await getApplicationDocumentsDirectory();
    //JOIN PATH WITH NAME OF DATABASE
    var path = join(dir.path, 'db_todo');
    database =
        await openDatabase(path, version: 2, onCreate: _onCreatingDatabase);

    return database;
  }

  _onCreatingDatabase(Database db, int version) async {
    return await db.execute('''
            CREATE TABLE $questionTable ($idColumn INTEGER PRIMARY KEY, 
            $questionIdColumn TEXT, 
            $acertouColumn TEXT, 
            $userIdColumn TEXT, 
            $nameCategoryColumn TEXT,
            $timeColumn TEXT)
        ''');
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}

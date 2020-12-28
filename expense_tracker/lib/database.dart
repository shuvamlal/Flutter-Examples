import 'dart:io';

import 'package:expense_tracker/models/transactions.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  final _databaseName = 'database_transaction.db';
  static final _tableName = 'myTable';
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initializeDatabase();
    return _database;
  }

  initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _databaseName);
    await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    db.execute('''
      CREATE TABLE $_tableName(id TEXT PRIMARY KEY, title TEXT, amount REAL, data TEXT)
    ''');
  }

  Future<int> insert(Transactions row) async {
    final Database db = await instance.database;
    return await db.insert(_tableName, row.toMap());
  }

  Future<List<Transactions>> queryAll() async {
    final Database db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query(_tableName);
    return List.generate(maps.length, (i) {
      return Transactions(
          id: maps[i]['id'],
          amount: maps[i]['amount'],
          title: maps[i]['title'],
          date: maps[i]['date']);
    });
  }

  Future<int> delete(String id) async {
    final Database db = await instance.database;
    return await db.delete(_tableName, where: 'id = ?', whereArgs: [id]);
  }
}

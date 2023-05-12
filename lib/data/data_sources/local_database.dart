import 'package:path/path.dart' as pathPackage;
import 'package:sqflite/sqflite.dart' as sqflite;

import '../../domain/entities/entities_export.dart';

class LocalDB {
  static final LocalDB instance = LocalDB._init();
  static sqflite.Database? _database;

  LocalDB._init();

  Future<sqflite.Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('store_database.db');
    return _database!;
  }

  Future<sqflite.Database> _initDB(String dbName) async {
    final dbPath = await sqflite.getDatabasesPath();
    final path = pathPackage.join(dbPath, dbName);

    return await sqflite.openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<void> _createDB(sqflite.Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    // const textTypeNull = 'TEXT';
    // const intType = 'INTEGER NOT NULL';
    // const intTypeNull = 'INTEGER';
    // const boolType = 'BOOLEAN NOT NULL';
    // const boolTypeNull = 'BOOLEAN';

    await db.execute('''
      CREATE TABLE $brandsTable(
        ${BrandFields.id} $idType,
        ${BrandFields.name}  $textType,        
        ${BrandFields.latin} $textType   
      )
     ''');
  }

  Future closeDB() async {
    final db = await instance.database;

    db.close();
  }
}

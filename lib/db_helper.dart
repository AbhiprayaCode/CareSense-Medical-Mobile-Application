import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = '${documentsDirectory.path}/user_photos.db';
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE Photos (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            email TEXT,
            photoPath TEXT
          )
        ''');
      },
    );
  }

  Future<void> savePhoto(String email, String photoPath) async {
    final db = await database;
    await db.insert('Photos', {'email': email, 'photoPath': photoPath});
  }

  Future<String?> getPhoto(String email) async {
    final db = await database;
    final res = await db.query(
      'Photos',
      where: 'email = ?',
      whereArgs: [email],
    );
    if (res.isNotEmpty) return res.first['photoPath'] as String?;
    return null;
  }
}

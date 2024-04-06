import 'package:sqflite/sqflite.dart';

import 'logger.dart';

class DatabaseLogger implements Logger {
  @override
  void log(String message) async {
    final database = await openDatabase('log.db');
    await database.insert('logs', {'message': message, 'timestamp': DateTime.now().toIso8601String()});
  }
}
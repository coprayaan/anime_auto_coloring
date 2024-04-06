import 'package:http/http.dart' as http;

import 'logger.dart';

class NetworkLogger implements Logger {
  @override
  void log(String message) async {
    await http.post(
      Uri.parse('https://your-log-server.com/logs'),
      body: {'message': message, 'timestamp': DateTime.now().toIso8601String()},
    );
  }
}
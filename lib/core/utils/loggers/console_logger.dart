

import 'package:flutter/foundation.dart';

import 'logger.dart';

class ConsoleLogger implements Logger {
  const ConsoleLogger();
  @override
  void log(String message) {
    if (kDebugMode) {
      print(message);
    }
  }
}
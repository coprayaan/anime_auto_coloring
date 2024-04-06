

import 'logger.dart';

class ConsoleLogger implements Logger {
  const ConsoleLogger();
  @override
  void log(String message) {
    print(message);
  }
}
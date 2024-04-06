
import 'package:sentry_flutter/sentry_flutter.dart';

import 'logger.dart';

class AppSentryLogger implements Logger {

  AppSentryLogger();
  
  @override
  void log(String message) {
    Sentry.captureMessage(message);
  }
}

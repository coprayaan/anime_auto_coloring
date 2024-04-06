import 'package:anime_auto_coloring/core/utils/constants/config_constants.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class AppInitializer{
  static Future<void> initialize() async {
    
    // Initialize sentry for error tracking.
    await intializeSentry();

  }
  
  
  static intializeSentry() async{
     await SentryFlutter.init(
      (options) {
        options.dsn = ConfigConstants.sentryDSN;
        options.tracesSampleRate = ConfigConstants.sentryTracesSampleRate;
        options.profilesSampleRate = ConfigConstants.sentryProfilesSampleRate;
      },
    );
  }
}
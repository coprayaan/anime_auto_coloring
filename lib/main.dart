import 'package:anime_auto_coloring/core/services/app_logger.dart';
import 'package:anime_auto_coloring/core/utils/loggers/console_logger.dart';
import 'package:flutter/material.dart';

import 'app/anime_coloring.dart';
import 'core/services/app_initializer.dart';
import 'core/utils/loggers/sentry_logger.dart';

Future<void> main() async {
  // Initialize the app. This will initialize sentry for error tracking and remaining services.
  await AppInitializer.initialize();
  // Initialize logger with sentry for release mode and console logger for debug mode.
  await AppLogger.initializeLogger(
      debugLogger: const ConsoleLogger(), releaseLogger: AppSentryLogger());
  // Run the app.
  runApp(const AnimeColoringApp());
}

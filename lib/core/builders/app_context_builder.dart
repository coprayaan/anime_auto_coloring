import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../models/app_context.dart';

class AppContextBuilder {
  static const storage = FlutterSecureStorage();

  static Future<AppContext> initialize() async {
    String? json = await storage.read(key: 'appContext');
    if (json != null) {
      return AppContext.fromJson(jsonDecode(json));
    } else {
      return AppContext(
        isDarkTheme: false,
        language: 'en',
        isLoggedIn: false,
      );
    }
  }

  static Future<void> save(AppContext appContext) async {
    await storage.write(key: 'appContext', value: jsonEncode(appContext.toJson()));
  }
}
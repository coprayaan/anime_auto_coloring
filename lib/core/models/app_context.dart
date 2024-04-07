import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_context.g.dart';

@JsonSerializable()
class AppContext {
  bool isDarkTheme;
  String language;
  bool isLoggedIn;

  static const storage = FlutterSecureStorage();

  AppContext({
    required this.isDarkTheme,
    required this.language,
    required this.isLoggedIn,
  });

  ThemeData get themeData => isDarkTheme ? ThemeData.dark() : ThemeData.light();

  factory AppContext.fromJson(Map<String, dynamic> json) => _$AppContextFromJson(json);
  Map<String, dynamic> toJson() => _$AppContextToJson(this);

}
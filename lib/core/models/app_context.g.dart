// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppContext _$AppContextFromJson(Map<String, dynamic> json) => AppContext(
      isDarkTheme: json['isDarkTheme'] as bool,
      language: json['language'] as String,
      isLoggedIn: json['isLoggedIn'] as bool,
    );

Map<String, dynamic> _$AppContextToJson(AppContext instance) =>
    <String, dynamic>{
      'isDarkTheme': instance.isDarkTheme,
      'language': instance.language,
      'isLoggedIn': instance.isLoggedIn,
    };

import 'dart:io';
import 'package:package_info/package_info.dart';
import 'package:path_provider/path_provider.dart';
import 'logger.dart';

class FileLogger implements Logger {
  @override
  void log(String message) async {
    final directory = await getApplicationDocumentsDirectory();
    final packageInfo = await PackageInfo.fromPlatform();
    final appName = packageInfo.appName;
    final file = File('${directory.path}/$appName.log.txt');
    final text = '${DateTime.now()}: $message\n';
    await file.writeAsString(text, mode: FileMode.append);
  }
}
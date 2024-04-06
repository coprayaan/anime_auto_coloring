import 'package:flutter/foundation.dart';

import '../utils/loggers/console_logger.dart';
import '../utils/loggers/logger.dart';

class AppLogger extends Logger{
  static late Logger _logger;
  static initializeLogger({Logger debugLogger =  const ConsoleLogger(), Logger? releaseLogger }) async{
    if (kReleaseMode) {
      if(releaseLogger == null){
        throw Exception('Release logger must be provided in release mode');
      }else{
        _logger = releaseLogger;
      }
    }
    else{
      _logger = debugLogger;
    }
  }
  
  @override
  void log(String message) {
    _logger.log(message);
  }


}
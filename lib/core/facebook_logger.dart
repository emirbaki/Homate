import 'dart:developer';

import 'package:homate/interfaces/i_logging.dart';

class FacebookLogger implements ILogging {
  @override
  Future<void> loggingLogic() async {
    await Future.delayed(const Duration(seconds: 1));
    log("saçmaladım");
  }
}

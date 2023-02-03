import 'package:homate/interfaces/i_logging.dart';

class HomateLogger implements ILogging {
  @override
  Future<void> loggingLogic() async {
    await Future.delayed(const Duration(seconds: 1));
    print("saçmaladım");
  }
}

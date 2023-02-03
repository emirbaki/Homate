import 'package:homate/interfaces/i_logging.dart';

class GoogleLogger implements ILogging {
  @override
  Future<void> loggingLogic() async {
    await Future.delayed(const Duration(seconds: 5));
    pirtlat("anaaa");
  }

  void pirtlat(String cumle) {
    print(cumle);
  }
}

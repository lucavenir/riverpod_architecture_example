import 'package:talker_flutter/talker_flutter.dart';

class RiverpodWeatherTalkerObserver extends TalkerObserver {
  const RiverpodWeatherTalkerObserver();

  @override
  void onError(TalkerError err) => _capture(err);
  @override
  void onException(TalkerException err) => _capture(err);

  Future<void> _capture(TalkerDataInterface err) async {
    // TODO intercept errors and send them remotely (e.g. Sentry, Firebase Crashlytics, etc.)
  }
}

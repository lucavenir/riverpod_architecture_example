import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connectivity_check_provider.g.dart';

typedef ConnectionCheck = ({Connectivity lanCheck, InternetConnectionChecker wanCheck});

@riverpod
ConnectionCheck connectivityCheck(ConnectivityCheckRef ref) {
  ref.keepAlive();
  final lanConnectivity = Connectivity();
  final wanConnectivity = InternetConnectionChecker.createInstance();
  return (lanCheck: lanConnectivity, wanCheck: wanConnectivity);
}

@riverpod
Stream<bool> connectivityStream(ConnectivityStreamRef ref) {
  final client = ref.watch(connectivityCheckProvider);
  return client.fullConnectivityStream;
}

extension ConnectionCheckExtension on ConnectionCheck {
  Future<bool> checkFullConnectivity() async {
    final lanConnectionStatus = await lanCheck.checkConnectivity();
    if (lanConnectionStatus case ConnectivityResult.none) return false;

    final wanConnectionStatus = await wanCheck.hasConnection;
    return wanConnectionStatus;
  }

  Stream<bool> get fullConnectivityStream async* {
    await for (final lanChange in lanCheck.onConnectivityChanged) {
      if (lanChange case ConnectivityResult.none) {
        yield false;
        continue;
      }

      final wanChange = wanCheck.onStatusChange.map(
        (event) => event == InternetConnectionStatus.connected,
      );

      yield* wanChange;
    }
  }
}

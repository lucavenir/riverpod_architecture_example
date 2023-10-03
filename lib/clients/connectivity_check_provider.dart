import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connectivity_check_provider.g.dart';

@riverpod
Connectivity connectivityCheck(ConnectivityCheckRef ref) {
  ref.keepAlive();
  final connectivity = Connectivity();
  return connectivity;
}

@riverpod
Stream<ConnectivityResult> connectivityStream(ConnectivityStreamRef ref) async* {
  final client = ref.watch(connectivityCheckProvider);
  yield await client.checkConnectivity();
  yield* client.onConnectivityChanged;
}

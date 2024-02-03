import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../clients/local_db.dart';

part 'splash_loading.provider.g.dart';

@riverpod
FutureOr<void> splashLoading(SplashLoadingRef ref) {
  return ref.watch(localDbProvider.future);
}

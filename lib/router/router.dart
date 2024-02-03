import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../clients/talker.dart';
import 'routes_configuration.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

  final initialLocation = ref.watch(initialLocationProvider);

  final router = GoRouter(
    navigatorKey: key,
    observers: [TalkerRouteObserver(talker)],
    initialLocation: initialLocation,
    routes: $appRoutes,
  );
  ref.onDispose(router.dispose);

  return router;
}

@riverpod
String initialLocation(InitialLocationRef ref) => '/';

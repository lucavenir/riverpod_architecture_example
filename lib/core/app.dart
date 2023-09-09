import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import '../router/routes.dart';
import '../theme/dark_theme.dart';
import '../theme/light_theme.dart';

class App extends HookWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final key = useRef(GlobalKey<NavigatorState>(debugLabel: 'routerKey'));
    final router = useMemoized(
      () => GoRouter(
        navigatorKey: key.value,
        debugLogDiagnostics: kDebugMode,
        initialLocation: const HomeRoute().location,
        routes: $appRoutes,
      ),
    );
    useEffect(() => router.dispose, [router]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    // TODO disable android OS backbutton

    return MaterialApp.router(
      routerConfig: router,
      title: 'FlGuard',
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}

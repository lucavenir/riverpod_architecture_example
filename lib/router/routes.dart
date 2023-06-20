import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_architecture_example/src/current_weather/presentation/pages/current_weather_page.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CurrentWeatherPage();
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return throw UnimplementedError();
  }
}

@TypedGoRoute<WeatherLocation>(
  path: '/location/:id',
  routes: [TypedGoRoute<ForecastRoute>(path: 'forecast')],
)
class WeatherLocation extends GoRouteData {
  const WeatherLocation(this.id);
  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return throw UnimplementedError();
  }
}

class ForecastRoute extends GoRouteData {
  const ForecastRoute(this.id);
  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return throw UnimplementedError();
  }
}

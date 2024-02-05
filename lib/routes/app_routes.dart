import 'package:go_router/go_router.dart';

class AppRoutes {
  late GoRouter _goRouter;

  AppRoutes() {
    _goRouter = GoRouter(
      routes: _defineRoutes(),
    );
  }

  List<RouteBase> _defineRoutes() {
    return [];
  }

  GoRouter get router => _goRouter;
}

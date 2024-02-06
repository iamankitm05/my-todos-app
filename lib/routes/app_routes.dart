import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todos_app/routes/routes_constant.dart';
import 'package:my_todos_app/screens/login_screen.dart';
import 'package:my_todos_app/screens/register_screen.dart';
import 'package:my_todos_app/screens/todos_creation_screen.dart';
import 'package:my_todos_app/screens/todos_listing_screen.dart';

class AppRoutes {
  late GoRouter _goRouter;

  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  AppRoutes() {
    _goRouter = GoRouter(
      initialLocation: '/login',
      navigatorKey: _rootNavigatorKey,
      routes: _defineRoutes(),
    );
  }

  List<RouteBase> _defineRoutes() {
    return [
      GoRoute(
        name: RouteNameConstant.login,
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: RouteNameConstant.register,
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        name: RouteNameConstant.todosListing,
        path: '/todosListing',
        builder: (context, state) => const TodosListingScreen(),
        routes: [
          GoRoute(
            name: RouteNameConstant.todoCreation,
            path: 'todoCreation',
            builder: (context, state) => const TodosCreationScreen(),
          ),
        ],
      ),
    ];
  }

  GoRouter get router => _goRouter;
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todos_app/routes/routes_constant.dart';
import 'package:my_todos_app/screens/todos_creation_screen.dart';
import 'package:my_todos_app/screens/todos_listing_screen.dart';

class AppRoutes {
  late GoRouter _goRouter;

  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  AppRoutes() {
    _goRouter = GoRouter(
      initialLocation: '/',
      navigatorKey: _rootNavigatorKey,
      routes: _defineRoutes(),
    );
  }

  List<RouteBase> _defineRoutes() {
    return [
      GoRoute(
        name: RouteNameConstant.todosListing,
        path: '/',
        builder: (context, state) => const TodosListingScreen(),
        routes: [
          GoRoute(
            name: RouteNameConstant.todoCreation,
            path: 'create-todo',
            builder: (context, state) => TodosCreationScreen(),
          ),
        ],
      ),
    ];
  }

  GoRouter get router => _goRouter;
}

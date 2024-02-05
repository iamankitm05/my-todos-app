import 'package:flutter/material.dart';
import 'package:my_todos_app/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'My ToDos',
      routerConfig: AppRoutes().router,
    );
  }
}
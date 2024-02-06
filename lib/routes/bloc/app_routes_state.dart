import 'package:equatable/equatable.dart';
import 'package:go_router/go_router.dart';

class AppRoutesState extends Equatable {
  final GoRouter routes;
  const AppRoutesState({required this.routes});

  @override
  List<Object?> get props => [routes];
}

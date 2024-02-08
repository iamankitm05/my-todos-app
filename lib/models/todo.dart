import 'package:equatable/equatable.dart';
import 'package:my_todos_app/models/user.dart';

class Todo extends Equatable {
  final int id;
  final bool isCompleted;
  final String title;
  final User user;

  const Todo({
    required this.id,
    required this.isCompleted,
    required this.title,
    required this.user,
  });

  @override
  List<Object?> get props => [];
}

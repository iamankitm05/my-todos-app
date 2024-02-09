import 'package:flutter/material.dart';
import 'package:my_todos_app/models/todo.dart';

@immutable
sealed class TodosState {
  const TodosState();
}

class TodosContainer extends TodosState {
  final List<Todo> todos;
  final String? error;
  
  const TodosContainer({
    required this.todos,
    this.error,
  });
}

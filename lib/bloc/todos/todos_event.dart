import 'package:flutter/material.dart';

@immutable
sealed class TodosEvent {
  const TodosEvent();
}

class LoadingTodosEvent extends TodosEvent {}

class CreateTodosEvent extends TodosEvent {
  final String text;
  const CreateTodosEvent({required this.text});
}

class CompleteTodosEvent extends TodosEvent {
  final int id;
  const CompleteTodosEvent({required this.id});
}
class DeleteTodosEvent extends TodosEvent {
  final int id;
  const DeleteTodosEvent({required this.id});
}

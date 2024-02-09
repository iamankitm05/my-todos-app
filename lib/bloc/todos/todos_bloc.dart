import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_todos_app/bloc/todos/todos_event.dart';
import 'package:my_todos_app/bloc/todos/todos_state.dart';
import 'package:my_todos_app/models/todo.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc() : super(const TodosContainer(todos: [])) {
    on<CreateTodosEvent>(_creatingNewTodo);
    on<CompleteTodosEvent>(_completeTodo);
    on<DeleteTodosEvent>(_deletingTodo);
  }

  void _creatingNewTodo(CreateTodosEvent event, Emitter<TodosState> emit) {
    List<Todo> todos = (state as TodosContainer).todos;
    if (event.text.isEmpty) {
      emit(TodosContainer(todos: [...todos], error: 'Please enter some text!'));
      return;
    }
    Todo newTodo = Todo(
      id: todos.length + 1,
      isCompleted: false,
      text: event.text,
    );
    emit(TodosContainer(todos: [...todos, newTodo]));
  }

  void _completeTodo(CompleteTodosEvent event, Emitter<TodosState> emit) {
    final todos = (state as TodosContainer).todos;
    final todo = todos.firstWhere((todo) => todo.id == event.id);
    todo.isCompleted = !todo.isCompleted;
    emit(TodosContainer(todos: [...todos]));
  }

  void _deletingTodo(DeleteTodosEvent event, Emitter<TodosState> emit) {
    final todos = (state as TodosContainer).todos.where((todo) => todo.id != event.id).toList();
    emit(TodosContainer(todos: todos));
  }
}

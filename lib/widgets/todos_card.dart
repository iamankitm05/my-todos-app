import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_todos_app/bloc/todos/todos_bloc.dart';
import 'package:my_todos_app/bloc/todos/todos_event.dart';
import 'package:my_todos_app/models/todo.dart';
import 'package:my_todos_app/utils/show_feedback_alert.dart';
import 'package:my_todos_app/utils/show_snackbar_alert.dart';

class TodosCard extends StatelessWidget {
  final Todo todo;
  const TodosCard({
    super.key,
    required this.todo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.deepPurple[100],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Checkbox(
            value: todo.isCompleted,
            onChanged: (value) {
              context.read<TodosBloc>().add(CompleteTodosEvent(id: todo.id));
            },
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Text(
              todo.text,
              style: TextStyle(
                decoration: todo.isCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              showFeedBackAlert(
                context: context,
                text:
                    'Are you sure you want to delete! If you once deleted you can\'t revert back',
                title: 'Danger',
                buttonBackgroundColor: Colors.red,
                buttonForegroundColor: Colors.white,
                buttonText: 'Delete',
              ).then((value) {
                if (value) {
                  context.read<TodosBloc>().add(DeleteTodosEvent(id: todo.id));
                  showSnackBarAlert(
                    context: context,
                    message: 'Todo Deleted!',
                    color: Colors.red,
                  );
                }
              });
            },
            icon: const Icon(Icons.delete),
            color: Colors.red,
          )
        ],
      ),
    );
  }
}

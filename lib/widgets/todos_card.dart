import 'package:flutter/material.dart';
import 'package:my_todos_app/models/todo.dart';

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
            onChanged: (value) {},
          ),
          Text(todo.text)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TodosCard extends StatelessWidget {
  const TodosCard({super.key});

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
            value: false,
            onChanged: (value) {},
          ),
          const Text('Todo #')
        ],
      ),
    );
  }
}

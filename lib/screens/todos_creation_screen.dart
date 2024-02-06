import 'package:flutter/material.dart';
import 'package:my_todos_app/widgets/custom_appbar.dart';
import 'package:my_todos_app/widgets/custom_button.dart';
import 'package:my_todos_app/widgets/custom_text_field.dart';

class TodosCreationScreen extends StatelessWidget {
  const TodosCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        titleSpacing: 0,
      ),
      backgroundColor: Colors.deepPurple[200],
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 8),
              const CustomTextField(hintText: 'Write here...'),
              const SizedBox(height: 20),
              CustomButton(
                onPressed: () {},
                text: 'Add',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

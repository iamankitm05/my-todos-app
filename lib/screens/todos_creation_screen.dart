import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todos_app/bloc/todos/todos_bloc.dart';
import 'package:my_todos_app/bloc/todos/todos_event.dart';
import 'package:my_todos_app/bloc/todos/todos_state.dart';
import 'package:my_todos_app/routes/routes_constant.dart';
import 'package:my_todos_app/utils/show_snackbar_alert.dart';
import 'package:my_todos_app/widgets/custom_appbar.dart';
import 'package:my_todos_app/widgets/custom_button.dart';
import 'package:my_todos_app/widgets/custom_text_field.dart';

class TodosCreationScreen extends StatelessWidget {
  TodosCreationScreen({super.key});
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        titleSpacing: 0,
      ),
      backgroundColor: Colors.deepPurple[200],
      body: BlocListener<TodosBloc, TodosState>(
        listener: (context, state) {
          final error = (state as TodosContainer).error;
          if (error == null) {
            showSnackBarAlert(
              context: context,
              message: 'Todo Added!',
              color: Colors.green,
            );
            context.goNamed(RouteNameConstant.todosListing);
          } else {
            showSnackBarAlert(
              context: context,
              message: error,
              color: Colors.red,
            );
          }
        },
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 8),
                CustomTextField(
                  hintText: 'Write here...',
                  controller: textController,
                ),
                const SizedBox(height: 20),
                CustomButton(
                  onPressed: () {
                    context
                        .read<TodosBloc>()
                        .add(CreateTodosEvent(text: textController.text));
                  },
                  text: 'Add',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

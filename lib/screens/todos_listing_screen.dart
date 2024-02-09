import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todos_app/bloc/todos/todos_bloc.dart';
import 'package:my_todos_app/bloc/todos/todos_state.dart';
import 'package:my_todos_app/routes/routes_constant.dart';
import 'package:my_todos_app/widgets/custom_appbar.dart';
import 'package:my_todos_app/widgets/todos_card.dart';

class TodosListingScreen extends StatelessWidget {
  const TodosListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: BlocBuilder<TodosBloc, TodosState>(
            builder: (context, state) {
              final todos = (state as TodosContainer).todos;
              return ListView.builder(
                itemCount: todos.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => TodosCard(
                  todo: todos[index],
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.goNamed(RouteNameConstant.todoCreation),
        child: const Icon(Icons.add),
      ),
    );
  }
}

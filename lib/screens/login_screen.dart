import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todos_app/routes/routes_constant.dart';
import 'package:my_todos_app/widgets/custom_appbar.dart';
import 'package:my_todos_app/widgets/custom_button.dart';
import 'package:my_todos_app/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const CustomTextField(
                hintText: 'Username',
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hintText: 'Password',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_red_eye_outlined,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Login',
                onPressed: () => context.goNamed(RouteNameConstant.todosListing),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Text(
                    'Don\'t have an account? ',
                  ),
                  InkWell(
                    onTap: () => context.goNamed(RouteNameConstant.register),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

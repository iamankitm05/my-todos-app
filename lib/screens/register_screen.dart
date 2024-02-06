import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todos_app/routes/routes_constant.dart';
import 'package:my_todos_app/widgets/custom_appbar.dart';
import 'package:my_todos_app/widgets/custom_button.dart';
import 'package:my_todos_app/widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                hintText: 'First Name',
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hintText: 'Last Name',
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hintText: 'Username',
              ),
              const SizedBox(height: 20),
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
              CustomTextField(
                hintText: 'Conform Password',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_red_eye_outlined,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Register',
                onPressed: () => context.goNamed(RouteNameConstant.todosListing)
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Text(
                    'Already have an account? ',
                  ),
                  InkWell(
                    onTap: () => context.goNamed(RouteNameConstant.login),
                    child: const Text(
                      "Login",
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

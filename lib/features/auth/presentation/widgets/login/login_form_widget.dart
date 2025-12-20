import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kera_app/core/routing/routes.dart';
import 'package:kera_app/core/widgets/app_text_button.dart';
import 'package:kera_app/features/auth/presentation/widgets/login/email_text_field.dart';
import 'forgot_password.dart';
import 'password_text_field.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EmailTextField(emailController: emailController),
          SizedBox(height: 20),
          PasswordTextField(passwordController: passwordController),
          ForgotPassword(),
          SizedBox(height: 40),
          SizedBox(
            width: double.infinity,
            child: AppTextButton(
              onPressed: () {
                validateThenLogin(context);
              },
              buttonText: "Login",
            ),
          ),
        ],
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (formKey.currentState!.validate()) {
      GoRouter.of(context).pushReplacement(Routes.homeView);
    }
  }
}

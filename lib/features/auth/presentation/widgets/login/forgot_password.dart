import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kera_app/core/routing/routes.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.push(Routes.forgotPasswordView);
      },
      child: Text(
        "Forgot password?",
        style: AppStyles.medium12.copyWith(color: AppColors.mainGreen),
      ),
    );
  }
}

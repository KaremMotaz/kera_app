import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/features/auth/presentation/widgets/login/login_form_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 80),
                SvgPicture.asset(AppAssets.locationIcon, width: 90, height: 90),
                SizedBox(height: 130),
                LoginFormWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

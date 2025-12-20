import 'package:flutter/material.dart';
import 'package:kera_app/core/theming/app_styles.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Splash Screen', style: AppStyles.extraBold26)),
    );
  }
}

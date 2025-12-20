import 'package:flutter/material.dart';
import 'package:kera_app/core/routing/app_router.dart';
import 'package:kera_app/core/theming/theme_manager.dart';

class KeraApp extends StatelessWidget {
  const KeraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.getAppTheme(),
      routerConfig: AppRouter.createRouter(),
    );
  }
}

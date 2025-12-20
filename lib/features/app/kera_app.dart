import 'package:flutter/material.dart';
import 'package:kera_app/core/routing/app_router.dart';
import 'package:kera_app/core/theming/theme_manager.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class KeraApp extends StatelessWidget {
  const KeraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: const Locale('ar'),
      supportedLocales: const [Locale('ar'), Locale('en')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.getAppTheme(),
      routerConfig: AppRouter.createRouter(),
    );
  }
}

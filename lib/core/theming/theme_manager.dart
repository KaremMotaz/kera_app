import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_styles.dart';

abstract class ThemeManager {
  static ThemeData getAppTheme() {
    return ThemeData(
      fontFamily: 'Almarai',
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle: AppStyles.bold20.copyWith(color: Colors.black),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
        ),
      ),
    );
  }
}

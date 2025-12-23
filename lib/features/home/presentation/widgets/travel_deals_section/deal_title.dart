import 'package:flutter/material.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';

class DealTitle extends StatelessWidget {
  const DealTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.medium17.copyWith(color: AppColors.textBlack),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kera_app/core/theming/app_colors.dart';

class FeatureDivider extends StatelessWidget {
  const FeatureDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: CircleAvatar(radius: 2, backgroundColor: AppColors.lighterGrey),
    );
  }
}

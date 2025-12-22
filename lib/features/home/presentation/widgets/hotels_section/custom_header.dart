import 'package:flutter/material.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.title,
    required this.buttonText,
    required this.onTap,
  });
  final String title;
  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.bold18.copyWith(color: AppColors.textBlack),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            buttonText,
            style: AppStyles.extraBold16.copyWith(color: AppColors.mainGreen),
          ),
        ),
      ],
    );
  }
}

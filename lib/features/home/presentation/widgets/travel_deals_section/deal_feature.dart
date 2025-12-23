import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';

class DealFeature extends StatelessWidget {
  const DealFeature({
    super.key,
    required this.icon,
    required this.label,
    required this.isIncluded,
  });

  final String icon;
  final String label;
  final bool isIncluded;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          icon,
          width: 15,
          colorFilter: ColorFilter.mode(AppColors.mainGreen, BlendMode.srcIn),
        ),
        const SizedBox(width: 6),
        Text(
          isIncluded ? "يشمل $label" : "لا يشمل $label",
          style: AppStyles.regular12.copyWith(color: AppColors.mainGray),
        ),
      ],
    );
  }
}

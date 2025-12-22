import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';

class CustomRoomFeature extends StatelessWidget {
  const CustomRoomFeature({
    super.key,
    required this.featureName,
    required this.featureIcon,
  });

  final String featureName;
  final String featureIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
        featureName,
          style: AppStyles.regular14.copyWith(color: AppColors.bodyGray),
          textDirection: TextDirection.ltr,
        ),
        SizedBox(width: 7),
        SvgPicture.asset(
          featureIcon,
          width: 16,
          height: 20,
          colorFilter: const ColorFilter.mode(
            AppColors.mainGreen,
            BlendMode.srcIn,
          ),
        ),
      ],
    );
  }
}

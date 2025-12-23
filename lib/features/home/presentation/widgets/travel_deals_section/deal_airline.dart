import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';

class DealAirline extends StatelessWidget {
  const DealAirline({super.key, required this.company});

  final String company;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor: Color(0xffdcfce7),
          child: SvgPicture.asset(
            AppAssets.planeIcon,
            width: 15,
            colorFilter: ColorFilter.mode(AppColors.mainGreen, BlendMode.srcIn),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          company,
          style: AppStyles.regular12.copyWith(color: AppColors.bodyGray),
        ),
      ],
    );
  }
}

import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/core/theming/app_styles.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(Routes.profileView);
          },
          child: CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(AppAssets.avatarImage),
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "محمد أحمد",
              style: AppStyles.bold22.copyWith(color: AppColors.bodyGray),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  "القاهرة، مصر",
                  style: AppStyles.regular16.copyWith(
                    color: AppColors.bodyGray,
                  ),
                ),
                const SizedBox(width: 4),
                SvgPicture.asset(
                  AppAssets.locationIcon,
                  width: 16,
                  height: 16,
                  colorFilter: const ColorFilter.mode(
                    AppColors.bodyGray,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                AppAssets.locationIcon,
                width: 18,
                height: 18,
                colorFilter: const ColorFilter.mode(
                  AppColors.bodyGray,
                  BlendMode.srcIn,
                ),
              ),
            ),
            const SizedBox(width: 16),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                AppAssets.locationIcon,
                width: 18,
                height: 18,
                colorFilter: const ColorFilter.mode(
                  AppColors.bodyGray,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

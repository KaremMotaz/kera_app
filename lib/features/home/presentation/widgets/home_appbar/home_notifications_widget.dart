import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kera_app/core/routing/routes.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/core/theming/app_colors.dart';

class HomeNotificationsWidget extends StatelessWidget {
  const HomeNotificationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(Routes.notificationView);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.lighterGrey),
        ),
        child: Stack(
          children: [
            SvgPicture.asset(
              AppAssets.notificationIcon,
              width: 20,
              height: 20,
              colorFilter: const ColorFilter.mode(
                AppColors.textBlack,
                BlendMode.srcIn,
              ),
            ),
            Positioned(
              right: 1,
              top: 2,
              child: SvgPicture.asset(
                AppAssets.dotIcon,
                width: 6,
                height: 6,
                colorFilter: const ColorFilter.mode(
                  AppColors.darkRed,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

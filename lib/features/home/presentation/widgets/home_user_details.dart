import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kera_app/core/routing/routes.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';

class HomeUserDetails extends StatelessWidget {
  const HomeUserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Routes.profileView);
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundImage: AssetImage(AppAssets.avatarImage),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "محمد أحمد",
                style: AppStyles.bold20.copyWith(color: AppColors.textBlack),
              ),
              Row(
                children: [
                  Text(
                    "القاهرة، مصر",
                    style: AppStyles.regular16.copyWith(
                      color: AppColors.bodyGray,
                    ),
                  ),
                  const SizedBox(width: 12),
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
        ],
      ),
    );
  }
}

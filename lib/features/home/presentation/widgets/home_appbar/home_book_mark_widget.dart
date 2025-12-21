import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kera_app/core/routing/routes.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/core/theming/app_colors.dart';

class HomeBookMarkWidget extends StatelessWidget {
  const HomeBookMarkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(Routes.bookMarkView);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.lighterGrey),
        ),
        child: SvgPicture.asset(
          AppAssets.bookmarkIcon,
          width: 20,
          height: 20,
          colorFilter: const ColorFilter.mode(
            AppColors.textBlack,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}

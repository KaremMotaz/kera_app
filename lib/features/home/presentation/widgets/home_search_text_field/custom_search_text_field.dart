import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kera_app/core/routing/routes.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import '../../../../../../core/theming/app_assets.dart';
import '../../../../../../core/widgets/app_text_form_field.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AppTextFormField(
        onTap: () {
          context.push(Routes.searchView);
        },
        readOnly: true,
        hintText: "ابحث عن الوجهة أو العرض",
        backgroundColor: AppColors.backgroundGrey,
        validator: (value) {},
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 12, right: 20),
          child: SvgPicture.asset(
            AppAssets.searchIcon,
            colorFilter: const ColorFilter.mode(
              AppColors.bodyGray,
              BlendMode.srcIn,
            ),
          ),
        ),
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              AppAssets.micIcon,
              colorFilter: const ColorFilter.mode(
                AppColors.mainGreen,
                BlendMode.srcIn,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 17, left: 17),
              child: SvgPicture.asset(
                AppAssets.filterIcon,
                colorFilter: const ColorFilter.mode(
                  AppColors.mainGreen,
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

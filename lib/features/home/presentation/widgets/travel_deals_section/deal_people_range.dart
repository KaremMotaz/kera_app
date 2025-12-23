import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kera_app/core/extensions/string_extensions.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';
import 'package:kera_app/features/home/data/models/travel_deals_model.dart';

class DealPeopleRange extends StatelessWidget {
  const DealPeopleRange({super.key, required this.travelDeal});

  final TravelDealsModel travelDeal;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "من ${travelDeal.minpeople.toString().toArabicNumbers()} "
          "إلى ${travelDeal.maxpeople.toString().toArabicNumbers()}",
          style: AppStyles.regular12.copyWith(color: AppColors.textBlack),
        ),
        const SizedBox(width: 4),
        SvgPicture.asset(
          AppAssets.peopleIcon,
          width: 15,
          colorFilter: const ColorFilter.mode(
            AppColors.mainGreen,
            BlendMode.srcIn,
          ),
        ),
      ],
    );
  }
}

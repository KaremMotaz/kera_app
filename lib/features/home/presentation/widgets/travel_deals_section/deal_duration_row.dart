import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kera_app/core/extensions/string_extensions.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';
import 'package:kera_app/features/home/data/models/travel_deals_model.dart';

class DealDurationRow extends StatelessWidget {
  const DealDurationRow({super.key, required this.travelDeal});

  final TravelDealsModel travelDeal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          AppAssets.calendarIcon,
          width: 15,
          colorFilter: const ColorFilter.mode(
            AppColors.mainGreen,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          "${travelDeal.numbersOfDays.toString().toArabicNumbers()} أيام / "
          "${travelDeal.numbersOfNights.toString().toArabicNumbers()} ليالٍ",
          style: AppStyles.regular12.copyWith(color: AppColors.mainGray),
        ),
      ],
    );
  }
}

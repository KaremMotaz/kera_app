import 'package:flutter/material.dart';
import 'package:kera_app/core/extensions/string_extensions.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';
import 'package:kera_app/features/home/data/models/travel_deals_model.dart';
import 'package:kera_app/features/home/presentation/widgets/travel_deals_section/deal_people_range.dart';

class DealPriceRow extends StatelessWidget {
  const DealPriceRow({super.key, required this.travelDeal});

  final TravelDealsModel travelDeal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              "${travelDeal.price.toInt().toString().toArabicNumbers()}\$",
              style: AppStyles.semiBold20.copyWith(color: AppColors.mainGreen),
            ),
            const SizedBox(height: 2),
            Text(
              "للفرد",
              style: AppStyles.regular14.copyWith(color: AppColors.mainGray),
            ),
          ],
        ),
        DealPeopleRange(travelDeal: travelDeal),
      ],
    );
  }
}

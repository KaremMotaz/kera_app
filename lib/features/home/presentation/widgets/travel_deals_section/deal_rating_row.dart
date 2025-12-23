import 'package:flutter/material.dart';
import 'package:kera_app/core/extensions/string_extensions.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';
import 'package:kera_app/core/widgets/app_text_button.dart';
import 'package:kera_app/features/home/data/models/travel_deals_model.dart';

class DealRatingRow extends StatelessWidget {
  const DealRatingRow({super.key, required this.travelDeal});

  final TravelDealsModel travelDeal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.star, color: AppColors.ratingYellow, size: 16),
            const SizedBox(width: 4),
            Text(
              travelDeal.rating.toString().toArabicNumbers(),
              style: AppStyles.medium12.copyWith(color: AppColors.textBlack),
            ),
            const SizedBox(width: 8),
            Text(
              '(${travelDeal.numbersOfRatings.toString().toArabicNumbers()} تقييم)',
              style: AppStyles.regular12.copyWith(color: AppColors.bodyGray),
            ),
          ],
        ),
        AppTextButton(
          onPressed: () {},
          buttonText: "عرض البرنامج بالكامل",
          buttonHeight: 36,
          buttonWidth: double.minPositive,
          verticalPadding: 0,
        ),
      ],
    );
  }
}

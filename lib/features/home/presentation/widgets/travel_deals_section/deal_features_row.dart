import 'package:flutter/material.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/features/home/data/models/travel_deals_model.dart';
import 'package:kera_app/features/home/presentation/widgets/travel_deals_section/deal_duration_row.dart';
import 'package:kera_app/features/home/presentation/widgets/travel_deals_section/deal_feature.dart';

class DealFeaturesRow extends StatelessWidget {
  const DealFeaturesRow({super.key, required this.travelDeal});

  final TravelDealsModel travelDeal;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            DealFeature(
              icon: AppAssets.carIcon,
              label: "التنقلات",
              isIncluded: travelDeal.isIncludedTransportation,
            ),
            const SizedBox(width: 50),
            DealDurationRow(travelDeal: travelDeal),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            DealFeature(
              icon: AppAssets.restaurantIcon,
              label: "الوجبات",
              isIncluded: travelDeal.isIncludedFood,
            ),
            const SizedBox(width: 50),
            DealFeature(
              icon: AppAssets.apartmentBuildingIcon,
              label: "الإقامة",
              isIncluded: travelDeal.isIncludedResidence,
            ),
          ],
        ),
      ],
    );
  }
}

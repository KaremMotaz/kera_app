import 'package:flutter/material.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/features/home/data/models/travel_deals_model.dart';
import 'package:kera_app/features/home/presentation/widgets/travel_deals_section/deal_airline.dart';
import 'package:kera_app/features/home/presentation/widgets/travel_deals_section/deal_duration_row.dart';
import 'package:kera_app/features/home/presentation/widgets/travel_deals_section/deal_features_row.dart';
import 'package:kera_app/features/home/presentation/widgets/travel_deals_section/deal_image.dart';
import 'package:kera_app/features/home/presentation/widgets/travel_deals_section/deal_price_row.dart';
import 'package:kera_app/features/home/presentation/widgets/travel_deals_section/deal_rating_row.dart';
import 'package:kera_app/features/home/presentation/widgets/travel_deals_section/deal_title.dart';

class TravelDealsCard extends StatelessWidget {
  const TravelDealsCard({super.key, required this.travelDeal});

  final TravelDealsModel travelDeal;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _cardDecoration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DealImage(imageUrl: travelDeal.imageUrl),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DealTitle(title: travelDeal.title),
                const SizedBox(height: 10),
                DealAirline(company: travelDeal.airplaneCompany),
                const SizedBox(height: 10),
                DealDurationRow(travelDeal: travelDeal),
                const SizedBox(height: 10),
                DealFeaturesRow(travelDeal: travelDeal),
                const SizedBox(height: 10),
                DealPriceRow(travelDeal: travelDeal),
                const SizedBox(height: 4),
                const Divider(thickness: 1, color: AppColors.lighterGrey),
                const SizedBox(height: 4),
                DealRatingRow(travelDeal: travelDeal),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final _cardDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(16),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withAlpha(25),
      spreadRadius: 4,
      blurRadius: 2,
      offset: const Offset(0, 1),
    ),
  ],
);

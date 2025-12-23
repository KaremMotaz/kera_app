import 'package:flutter/material.dart';
import 'package:kera_app/features/home/data/models/travel_deals_model.dart';
import 'package:kera_app/features/home/presentation/widgets/travel_deals_section/travel_deals_card.dart';

class TravelDealsSliverList extends StatelessWidget {
  const TravelDealsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TravelDealsModel> travelDeals =
        TravelDealsModel.travelDealsModels;

    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 24, right: 24),
          child: TravelDealsCard(travelDeal: travelDeals[index]),
        );
      }, childCount: travelDeals.length),
    );
  }
}

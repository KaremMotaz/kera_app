import 'package:flutter/material.dart';
import 'package:kera_app/features/home/data/models/recently_booked_hotel_model.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/nearest_hotels_section.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/recently_booked_hotel_card.dart';

class RecentlyBookedSliverList extends StatelessWidget {
  const RecentlyBookedSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<RecentlyBookedHotelModel> hotels =
        RecentlyBookedHotelModel.recentlyBookedHotelModel;

    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        hotels.length + 1;
        if (index == 2) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 24, right: 24),
            child: const NearestHotelsSection(),
          );
        }
        final itemIndex = index > 2 ? index - 1 : index;
        return Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 24, right: 24),
          child: RecentlyBookedHotelCard(hotel: hotels[itemIndex]),
        );
      }, childCount: hotels.length + 1),
    );
  }
}

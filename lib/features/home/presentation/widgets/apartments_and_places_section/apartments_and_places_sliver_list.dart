import 'package:flutter/material.dart';
import 'package:kera_app/features/home/data/models/recently_booked_hotel_model.dart';
import 'package:kera_app/features/home/presentation/widgets/apartments_and_places_section/apartments_and_places_card.dart';

class ApartmentsAndPlacesSliverList extends StatelessWidget {
  const ApartmentsAndPlacesSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<RecentlyBookedHotelModel> hotels =
        RecentlyBookedHotelModel.recentlyBookedHotelModel;

    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 24, right: 24),
          child: ApartmentsAndPlacesCard(hotel: hotels[index]),
        );
      }, childCount: hotels.length),
    );
  }
}

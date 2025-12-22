import 'package:flutter/material.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/fillter_cards_section.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/hotels_fillters.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/nearest_hotels_section.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/recently_booked_section.dart';

class HotelsSection extends StatelessWidget {
  const HotelsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 18),
        HotelsFillters(),
        SizedBox(height: 24),
        FillterCardsSection(),
        SizedBox(height: 24),
        RecentlyBookedSection(),
        SizedBox(height: 24),
        NearestHotelsSection(),
      ],
    );
  }
}

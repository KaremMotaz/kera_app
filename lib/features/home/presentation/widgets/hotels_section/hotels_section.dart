import 'package:flutter/material.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/booking_tabs.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/fillter_hotels_cards_section.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/hotels_fillters.dart';

class HotelsSection extends StatelessWidget {
  const HotelsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 18),
        HotelsFillters(),
        SizedBox(height: 24),
        FillterHotelsCardsSection(),
        SizedBox(height: 24),
        BookingTabs(),
      ],
    );
  }
}

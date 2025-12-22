import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kera_app/features/home/manager/home_tabs_cubit/home_tabs_cubit.dart';
import 'package:kera_app/features/home/presentation/widgets/apartments_and_places_section/apartments_and_places_section.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/hotels_section.dart';
import 'package:kera_app/features/home/presentation/widgets/travel_deals_section/travel_deals_section.dart';

class CategoriesContent extends StatelessWidget {
  const CategoriesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTabsCubit, int>(
      builder: (context, index) {
        return IndexedStack(
          index: index,
          children: const [
            HotelsSection(),
            ApartmentsAndPlacesSection(),
            TravelDealsSection(),
          ],
        );
      },
    );
  }
}

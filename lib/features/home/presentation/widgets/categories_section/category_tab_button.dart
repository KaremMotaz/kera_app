import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kera_app/features/home/manager/home_tabs_cubit/home_tabs_cubit.dart';
import 'package:kera_app/features/home/presentation/views/apartments_and_places_view.dart';
import 'package:kera_app/features/home/presentation/views/hotels_view.dart';
import 'package:kera_app/features/home/presentation/views/travel_deals_view.dart';

class CategoriesContent extends StatelessWidget {
  const CategoriesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTabsCubit, int>(
      builder: (context, index) {
        return Expanded(
          child: IndexedStack(
            index: index,
            children: const [
              HotelsView(),
              ApartmentsAndPlacesView(),
              TravelDealsView(),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kera_app/features/home/presentation/widgets/categories_section/categories_section.dart';
import 'package:kera_app/features/home/presentation/widgets/custom_search_text_field.dart';
import 'package:kera_app/features/home/presentation/widgets/fillter_cards_section.dart';
import 'package:kera_app/features/home/presentation/widgets/fillter_section.dart';
import 'package:kera_app/features/home/presentation/widgets/home_appbar/home_appbar.dart';
import 'package:kera_app/features/home/presentation/widgets/nearest_hotels_section.dart';
import 'package:kera_app/features/home/presentation/widgets/recently_booked_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                HomeAppbar(),
                SizedBox(height: 24),
                CustomSearchTextField(),
                SizedBox(height: 24),
                CategoriesSection(),
                SizedBox(height: 24),
                FillterSection(),
                SizedBox(height: 24),
                FillterCardsSection(),
                SizedBox(height: 24),
                RecentlyBookedSection(),
                SizedBox(height: 24),
                NearestHotelsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

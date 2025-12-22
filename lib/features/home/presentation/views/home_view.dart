import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kera_app/features/home/manager/home_tabs_cubit/home_tabs_cubit.dart';
import 'package:kera_app/features/home/presentation/widgets/categories_section/categories_section.dart';
import 'package:kera_app/features/home/presentation/widgets/home_search_text_field/custom_search_text_field.dart';
import 'package:kera_app/features/home/presentation/widgets/home_appbar/home_appbar.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/recently_booked_sliver_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeTabsCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Color.fromARGB(255, 245, 243, 243), Colors.white],
              ),
            ),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: HomeAppbar(),
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: 24)),
                SliverToBoxAdapter(child: CustomSearchTextField()),
                SliverToBoxAdapter(child: SizedBox(height: 24)),
                SliverToBoxAdapter(child: CategoriesSection()),
                BlocBuilder<HomeTabsCubit, int>(
                  builder: (context, index) {
                    if (index == 0) {
                      return RecentlyBookedSliverSection();
                    } else {
                      return SliverToBoxAdapter(child: SizedBox.shrink());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

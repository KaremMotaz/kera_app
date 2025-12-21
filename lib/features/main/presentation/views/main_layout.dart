import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kera_app/features/Booking/presentation/views/booking_view.dart';
import 'package:kera_app/features/home/presentation/views/home_view.dart';
import 'package:kera_app/features/home/presentation/views/search_view.dart';
import 'package:kera_app/features/main/manager/main_cubit/main_cubit.dart';
import 'package:kera_app/features/main/manager/main_cubit/main_state.dart';
import 'package:kera_app/features/profile/presentation/views/profile_view.dart';
import '../widgets/main_bottom_nav.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MainCubit(),
      child: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          return Scaffold(
            body: IndexedStack(
              index: state.currentIndex,
              children: const [
                HomeView(),
                SearchView(),
                BookingView(),
                ProfileView(),
              ],
            ),
            bottomNavigationBar: MainBottomNav(
              currentIndex: state.currentIndex,
              onTap: context.read<MainCubit>().changeTab,
            ),
          );
        },
      ),
    );
  }
}

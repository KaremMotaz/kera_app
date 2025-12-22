import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';
import 'package:kera_app/features/home/manager/hotels_tabs_cubit/hotels_filters_cubit.dart';

class HotelsFillters extends StatelessWidget {
  const HotelsFillters({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HotelsFiltersCubit(),
      child: BlocBuilder<HotelsFiltersCubit, int>(
        builder: (context, currentIndex) {
          final filters = ["موصي به", "بالقرب منك", "رائج", "شائع"];

          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: List.generate(filters.length, (index) {
                  final bool isSelected = index == currentIndex;
              
                  return GestureDetector(
                    onTap: () {
                      return context.read<HotelsFiltersCubit>().changeFilter(
                        index,
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 12,
                      ),
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: isSelected ? AppColors.mainGreen : Colors.white,
                        border: Border.all(width: 2, color: AppColors.mainGreen),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          filters[index],
                          style: AppStyles.bold16.copyWith(
                            color: isSelected
                                ? Colors.white
                                : AppColors.mainGreen,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          );
        },
      ),
    );
  }
}

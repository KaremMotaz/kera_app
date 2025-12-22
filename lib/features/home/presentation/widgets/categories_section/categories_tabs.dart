import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';
import 'package:kera_app/features/home/manager/home_tabs_cubit/home_tabs_cubit.dart';

class CategoriesTabs extends StatelessWidget {
  const CategoriesTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTabsCubit, int>(
      builder: (context, currentIndex) {
        final tabs = ['فنادق', 'شقق وأماكن', 'عروض رحلات'];

        return Row(
          children: List.generate(tabs.length, (index) {
            final bool isSelected = index == currentIndex;

            return Expanded(
              child: GestureDetector(
                onTap: () => context.read<HomeTabsCubit>().changeTab(index),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.lighterGreen
                        : Colors.transparent,
                    border: Border.all(
                      width: 2,
                      color: isSelected
                          ? AppColors.mainGreen
                          : Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      tabs[index],
                      style: AppStyles.semiBold15.copyWith(
                        color: AppColors.textBlack,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }
}

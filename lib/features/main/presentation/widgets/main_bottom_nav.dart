import 'package:flutter/material.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/features/main/presentation/widgets/nav_item.dart';

class MainBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const MainBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavItem(
            index: 0,
            currentIndex: currentIndex,
            label: 'الرئيسية',
            icon: AppAssets.homeIcon,
            activeIcon: AppAssets.homeFilledIcon,
            onTap: onTap,
          ),
          NavItem(
            index: 1,
            currentIndex: currentIndex,
            label: 'بحث',
            icon: AppAssets.searchIcon,
            activeIcon: AppAssets.searchFilledIcon,
            onTap: onTap,
          ),
          NavItem(
            index: 2,
            currentIndex: currentIndex,
            label: 'الحجز',
            icon: AppAssets.documentIcon,
            activeIcon: AppAssets.documentFilledIcon,
            onTap: onTap,
          ),
          NavItem(
            index: 3,
            currentIndex: currentIndex,
            label: 'الملف الشخصي',
            icon: AppAssets.personOutlinedIcon,
            activeIcon: AppAssets.personFilledIcon,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}

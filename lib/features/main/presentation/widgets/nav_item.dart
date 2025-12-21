import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kera_app/core/theming/app_colors.dart';

class NavItem extends StatelessWidget {
  final int index;
  final int currentIndex;
  final String label;
  final String icon;
  final String activeIcon;
  final ValueChanged<int> onTap;

  const NavItem({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.label,
    required this.icon,
    required this.activeIcon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isActive = index == currentIndex;
    final Color color = isActive ? AppColors.mainGreen : AppColors.mainGray;

    return InkWell(
      onTap: () => onTap(index),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 14, bottom: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              isActive ? activeIcon : icon,
              width: isActive ? 26 : 22,
              height: isActive ? 26 : 22,
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
            ),
            const SizedBox(height: 3),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

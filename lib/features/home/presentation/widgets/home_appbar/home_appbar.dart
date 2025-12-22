import 'package:kera_app/features/home/presentation/widgets/home_appbar/home_book_mark_widget.dart';
import 'package:kera_app/features/home/presentation/widgets/home_appbar/home_notifications_widget.dart';
import 'package:kera_app/features/home/presentation/widgets/home_appbar/home_user_details.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          HomeUserDetails(),
          const Spacer(),
          Row(
            children: [
              HomeNotificationsWidget(),
              const SizedBox(width: 8),
              HomeBookMarkWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

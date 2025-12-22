import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kera_app/core/routing/routes.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/custom_header.dart';

class RecentlyBookedHeader extends StatelessWidget {
  const RecentlyBookedHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomHeader(
        title: "تم الحجز مؤخرا",
        buttonText: "عرض الكل",
        onTap: () {
          context.push(Routes.recentlyBookedView);
        },
      ),
    );
  }
}



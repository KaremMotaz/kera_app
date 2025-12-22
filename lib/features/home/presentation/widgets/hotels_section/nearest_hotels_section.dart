import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kera_app/core/routing/routes.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/custom_header.dart';

class NearestHotelsSection extends StatelessWidget {
  const NearestHotelsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeader(
          title: "أقرب الفنادق اليك",
          buttonText: "فتح الخريطة",
          onTap: () {
            context.push(Routes.mapView);
          },
        ),
        SizedBox(height: 18),
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.mapImage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ],
    );
  }
}

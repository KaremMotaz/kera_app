import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';
import 'package:kera_app/features/home/data/models/filtered_hotels_model.dart';

class HotelsCardWidget extends StatelessWidget {
  final FilteredHotelsModel filteredHotelsModel;
  const HotelsCardWidget({super.key, required this.filteredHotelsModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 251,
      width: 178,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                filteredHotelsModel.imageUrl,
                fit: BoxFit.cover,
              ),
            ),

            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withAlpha(110)],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 12,
              right: 12,
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  AppAssets.heartFillIcon,
                  width: 18,
                  height: 18,
                  colorFilter: const ColorFilter.mode(
                    AppColors.darkRed,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 14,
              right: 14,
              bottom: 14,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    filteredHotelsModel.name,
                    style: AppStyles.bold16.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    filteredHotelsModel.location,
                    style: AppStyles.regular10.copyWith(color: Colors.white70),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${filteredHotelsModel.price.toInt()} دولار / الليلة",
                        style: AppStyles.bold14.copyWith(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Text(
                            filteredHotelsModel.rating.toString(),
                            style: AppStyles.regular14.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Icon(
                            Icons.star,
                            color: AppColors.ratingYellow,
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

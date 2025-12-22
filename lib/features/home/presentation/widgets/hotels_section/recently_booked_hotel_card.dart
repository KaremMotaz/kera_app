import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kera_app/core/helpers/string_extensions.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';
import 'package:kera_app/features/home/data/models/recently_booked_hotel_model.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/custom_room_feature.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/feature_divider.dart';

class RecentlyBookedHotelCard extends StatelessWidget {
  const RecentlyBookedHotelCard({super.key, required this.hotel});
  final RecentlyBookedHotelModel hotel;
  @override
  Widget build(BuildContext context) {
    final features = [
      ("Breakfast", AppAssets.restaurantIcon),
      ("Gym", AppAssets.dumbbellIcon),
      ("Wifi", AppAssets.wifiIcon),
      ("${hotel.numbersOfBeds} Beds", AppAssets.bedIcon),
    ];

    return Container(
      padding: EdgeInsets.all(20),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 90,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(hotel.imageUrl, fit: BoxFit.cover),
                ),
              ),

              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(hotel.name, style: AppStyles.bold20),
                  SizedBox(height: 10),
                  Text(hotel.location, style: AppStyles.regular14),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        hotel.rating.toString().toArabicNumbers(),
                        style: AppStyles.bold14.copyWith(
                          color: AppColors.mainGreen,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.star, color: AppColors.textBlack, size: 16),
                      SizedBox(width: 8),
                      Text(
                        '(${hotel.numbersOfRatings} تقييم)',
                        style: AppStyles.regular12.copyWith(
                          color: AppColors.bodyGray,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "${hotel.price.toInt()}\$".toArabicNumbers(),
                    style: AppStyles.bold24.copyWith(
                      color: AppColors.mainGreen,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '/ في الليلة',
                    style: AppStyles.regular10.copyWith(
                      color: AppColors.bodyGray,
                    ),
                  ),
                  SizedBox(height: 22),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      AppAssets.bookmarkIcon,
                      width: 16,
                      height: 20,
                      colorFilter: const ColorFilter.mode(
                        AppColors.mainGray,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 12),
          Divider(color: Color(0xffE7E7E7)),
          SizedBox(height: 12),
          Row(
            children:
                features
                    .map(
                      (feature) => CustomRoomFeature(
                        featureName: feature.$1,
                        featureIcon: feature.$2,
                      ),
                    )
                    .expand((widget) => [widget, FeatureDivider()])
                    .toList()
                  ..removeLast(),
          ),
        ],
      ),
    );
  }
}

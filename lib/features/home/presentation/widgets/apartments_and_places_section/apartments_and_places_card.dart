import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kera_app/core/extensions/place_type_extension.dart';
import 'package:kera_app/core/extensions/string_extensions.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';
import 'package:kera_app/features/home/data/models/apartments_and_places_model.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/custom_room_feature.dart';

class ApartmentsAndPlacesCard extends StatelessWidget {
  const ApartmentsAndPlacesCard({super.key, required this.apartmentsAndPlaces});
  final ApartmentsAndPlacesModel apartmentsAndPlaces;
  @override
  Widget build(BuildContext context) {
    final features = [
      ("غسيل", AppAssets.clockIcon),
      ("مطبخ", AppAssets.sidebarIcon),
      ("Wi-fi", AppAssets.wifiIcon),
      ("${apartmentsAndPlaces.numbersOfBeds} غرف", AppAssets.bedIcon),
    ];

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
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
                  child: Image.asset(
                    apartmentsAndPlaces.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 90,
                    child: Text(
                      apartmentsAndPlaces.name,
                      style: AppStyles.regular14,
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    apartmentsAndPlaces.location,
                    style: AppStyles.regular12.copyWith(
                      color: AppColors.bodyGray,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        apartmentsAndPlaces.rating.toString().toArabicNumbers(),
                        style: AppStyles.medium12.copyWith(
                          color: AppColors.textBlack,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.star, color: AppColors.ratingYellow, size: 16),
                      SizedBox(width: 8),
                      Text(
                        '(${apartmentsAndPlaces.numbersOfRatings.toString().toArabicNumbers()}/${apartmentsAndPlaces.peopleRatings.toString().toArabicNumbers()} تقييم)',
                        style: AppStyles.regular12.copyWith(
                          color: AppColors.bodyGray,
                        ),
                        textDirection: TextDirection.rtl,
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
                    "${apartmentsAndPlaces.price.toInt()}\$".toArabicNumbers(),
                    style: AppStyles.semiBold20.copyWith(
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
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        apartmentsAndPlaces.typeOfPlace,
                        style: AppStyles.regular10.copyWith(
                          color: AppColors.bodyGray,
                        ),
                      ),
                      SizedBox(width: 4),
                      SvgPicture.asset(
                        apartmentsAndPlaces.typeOfPlace.icon,
                        width: 16,
                        height: 20,
                        colorFilter: const ColorFilter.mode(
                          AppColors.mainGreen,
                          BlendMode.srcIn,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 12),
          Divider(color: Color(0xffE7E7E7)),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: features
                .map(
                  (feature) => CustomRoomFeature(
                    featureName: feature.$1,
                    featureIcon: feature.$2,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

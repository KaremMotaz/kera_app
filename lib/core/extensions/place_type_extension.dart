import 'package:kera_app/core/theming/app_assets.dart';

extension PlaceTypeExtension on String {
  String get icon {
    switch (this) {
      case 'شقة':
        return AppAssets.apartmentBuildingIcon;
      case 'غرفة':
        return AppAssets.bedIcon;
      case 'سرير مشترك':
        return AppAssets.peopleIcon;
      default:
        return AppAssets.apartmentBuildingIcon;
    }
  }
}

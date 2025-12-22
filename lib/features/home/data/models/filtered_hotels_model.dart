import 'package:kera_app/core/theming/app_assets.dart';

class FilteredHotelsModel {
  final String imageUrl;
  final String name;
  final double price;
  final String location;
  final double rating;

  FilteredHotelsModel({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.location,
    required this.rating,
  });

  static List<FilteredHotelsModel> get filteredHotelsCards => [
    FilteredHotelsModel(
      imageUrl: AppAssets.hotel1,
      name: 'منتجع الأفق',
      price: 480,
      location: 'لوس أنجلوس، كاليفورنيا',
      rating: 4.5,
    ),
    FilteredHotelsModel(
      imageUrl: AppAssets.hotel2,
      name: 'نزل اوبال غروف',
      price: 190,
      location: 'سان دييغو، كاليفورنيا',
      rating: 4.7,
    ),
    FilteredHotelsModel(
      imageUrl: AppAssets.hotel3,
      name: 'منتجع الجبال',
      price: 320,
      location: 'أسوان، مصر',
      rating: 4.3,
    ),
  ];
}

import 'package:kera_app/core/theming/app_assets.dart';

class RecentlyBookedHotelModel {
  final String imageUrl;
  final String name;
  final double price;
  final String location;
  final double rating;
  final int numbersOfBeds;
  final int numbersOfRatings;

  RecentlyBookedHotelModel({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.location,
    required this.rating,
    required this.numbersOfBeds,
    required this.numbersOfRatings,
  });

  static List<RecentlyBookedHotelModel> get recentlyBookedHotelModel => [
    RecentlyBookedHotelModel(
      imageUrl: AppAssets.room1,
      name: "النخيل الذهبي",
      price: 35,
      location: 'لوس أنجلوس، كاليفورنيا',
      rating: 4.8,
      numbersOfBeds: 2,
      numbersOfRatings: 4378,
    ),
    RecentlyBookedHotelModel(
      imageUrl: AppAssets.room2,
      name: "كازينو بالمز",
      price: 29,
      location: "أمستردام، هولندا",
      rating: 4.9,
      numbersOfBeds: 2,
      numbersOfRatings: 5283,
    ),
    RecentlyBookedHotelModel(
      imageUrl: AppAssets.room3,
      name: "بالازو فيرساتشي",
      price: 36,
      location: "روما، إيطاليا",
      rating: 4.7,
      numbersOfRatings: 3277,
      numbersOfBeds: 2,
    ),
    RecentlyBookedHotelModel(
      imageUrl: AppAssets.room3,
      name: "بالازو فيرساتشي",
      price: 36,
      location: "روما، إيطاليا",
      rating: 4.7,
      numbersOfRatings: 3277,
      numbersOfBeds: 2,
    ),
    RecentlyBookedHotelModel(
      imageUrl: AppAssets.room3,
      name: "بالازو فيرساتشي",
      price: 36,
      location: "روما، إيطاليا",
      rating: 4.7,
      numbersOfRatings: 3277,
      numbersOfBeds: 2,
    ),
    RecentlyBookedHotelModel(
      imageUrl: AppAssets.room4,
      name: "منتجع بولغاري",
      price: 27,
      location: "إسطنبول، تركيا",
      rating: 4.8,
      numbersOfRatings: 4981,
      numbersOfBeds: 2,
    ),
    RecentlyBookedHotelModel(
      imageUrl: AppAssets.room4,
      name: "منتجع بولغاري",
      price: 27,
      location: "إسطنبول، تركيا",
      rating: 4.8,
      numbersOfRatings: 4981,
      numbersOfBeds: 2,
    ),
    RecentlyBookedHotelModel(
      imageUrl: AppAssets.room4,
      name: "منتجع بولغاري",
      price: 27,
      location: "إسطنبول، تركيا",
      rating: 4.8,
      numbersOfRatings: 4981,
      numbersOfBeds: 2,
    ),
  ];
}

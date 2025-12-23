import 'package:kera_app/core/theming/app_assets.dart';

class TravelDealsModel {
  final String imageUrl;
  final String title;
  final String airplaneCompany;
  final bool isIncludedTransportation;
  final bool isIncludedFood;
  final bool isIncludedResidence;
  final int numbersOfDays;
  final int numbersOfNights;
  final double price;
  final int minpeople;
  final int maxpeople;
  final double rating;
  final int numbersOfRatings;

  TravelDealsModel({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.airplaneCompany,
    required this.rating,
    required this.numbersOfRatings,
    required this.isIncludedTransportation,
    required this.isIncludedFood,
    required this.isIncludedResidence,
    required this.numbersOfDays,
    required this.numbersOfNights,
    required this.minpeople,
    required this.maxpeople,
  });

  static List<TravelDealsModel> get travelDealsModels => [
    TravelDealsModel(
      imageUrl: AppAssets.travelDeals1,
      title: "رحلة المالديف لمدة 5 أيام",
      price: 900,
      airplaneCompany: "الرحالة للسياحة",
      rating: 4.8,
      numbersOfRatings: 156,
      isIncludedTransportation: true,
      isIncludedFood: true,
      isIncludedResidence: true,
      numbersOfDays: 5,
      numbersOfNights: 4,
      minpeople: 2,
      maxpeople: 6,
    ),
    TravelDealsModel(
      imageUrl: AppAssets.travelDeals2,
      title: "جولة أوروبية شاملة",
      price: 1850,
      airplaneCompany: "سفر العالم",
      rating: 4.9,
      numbersOfRatings: 243,
      isIncludedTransportation: true,
      isIncludedFood: true,
      isIncludedResidence: true,
      numbersOfDays: 10,
      numbersOfNights: 9,
      minpeople: 2,
      maxpeople: 8,
    ),
    TravelDealsModel(
      imageUrl: AppAssets.travelDeals3,
      title: "سفاري كينيا الرائعة",
      price: 1250,
      airplaneCompany: "مغامرات إفريقيا",
      rating: 4.7,
      numbersOfRatings: 89,
      isIncludedTransportation: true,
      isIncludedFood: true,
      isIncludedResidence: true,
      numbersOfDays: 7,
      numbersOfNights: 6,
      minpeople: 4,
      maxpeople: 12,
    ),
  ];
}

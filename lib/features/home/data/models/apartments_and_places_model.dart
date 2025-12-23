import 'package:kera_app/core/theming/app_assets.dart';

class ApartmentsAndPlacesModel {
  final String imageUrl;
  final String name;
  final double price;
  final String location;
  final String typeOfPlace;
  final double rating;
  final int numbersOfBeds;
  final int numbersOfRatings;
  final int peopleRatings;

  ApartmentsAndPlacesModel({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.location,
    required this.rating,
    required this.numbersOfBeds,
    required this.numbersOfRatings,
    required this.peopleRatings,
    required this.typeOfPlace,
  });

  static List<ApartmentsAndPlacesModel> get apartmentsAndPlacesModel => [
    ApartmentsAndPlacesModel(
      imageUrl: AppAssets.house1,
      name: "شقة مطلة على البحر",
      price: 450,
      location: "دبي، الإمارات",
      rating: 4.7,
      numbersOfBeds: 2,
      numbersOfRatings: 152,
      peopleRatings: 8,
      typeOfPlace: "شقة",
    ),
    ApartmentsAndPlacesModel(
      imageUrl: AppAssets.house2,
      name: "استوديو في وسط المدينة",
      price: 280,
      location: "القاهرة، مصر",
      rating: 4.5,
      numbersOfBeds: 1,
      numbersOfRatings: 98,
      peopleRatings: 6,
      typeOfPlace: "غرفة",
    ),
    ApartmentsAndPlacesModel(
      imageUrl: AppAssets.house3,
      name: "غرفة مشتركة - المسافرين",
      price: 120,
      location: "بانكوك،تايلاند",
      rating: 4.3,
      numbersOfRatings: 234,
      numbersOfBeds: 1,
      peopleRatings: 4,
      typeOfPlace: "سرير مشترك",
    ),
    ApartmentsAndPlacesModel(
      imageUrl: AppAssets.house4,
      name: "فيلا فاخرة 3 غرف",
      price: 850,
      location: "بالي، اندونيسيا",
      rating: 4.9,
      numbersOfRatings: 321,
      numbersOfBeds: 3,
      peopleRatings: 9,
      typeOfPlace: "شقة",
    ),
  ];
}

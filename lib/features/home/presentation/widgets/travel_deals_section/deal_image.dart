import 'package:flutter/material.dart';

class DealImage extends StatelessWidget {
  const DealImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      child: Image.asset(imageUrl, fit: BoxFit.cover),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kera_app/features/home/data/models/filtered_hotels_model.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/hotels_card_widget.dart';

class FillterCardsSection extends StatelessWidget {
  const FillterCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FilteredHotelsModel> filteredHotelsModels =
        FilteredHotelsModel.filteredHotelsCards;

    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filteredHotelsModels.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: index == 0
                ? const EdgeInsets.only(right: 10, left: 14)
                : const EdgeInsets.only(left: 14),
            child: HotelsCardWidget(
              filteredHotelsModel: filteredHotelsModels[index],
            ),
          );
        },
      ),
    );
  }
}

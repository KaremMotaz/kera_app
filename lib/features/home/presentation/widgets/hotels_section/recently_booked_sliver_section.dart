import 'package:flutter/material.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/recently_booked_header.dart';
import 'package:kera_app/features/home/presentation/widgets/hotels_section/recently_booked_sliver_list.dart';
import 'package:sliver_tools/sliver_tools.dart';

class RecentlyBookedSliverSection extends StatelessWidget {
  const RecentlyBookedSliverSection({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: RecentlyBookedHeader()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        RecentlyBookedSliverList(),
      ],
    );
  }
}

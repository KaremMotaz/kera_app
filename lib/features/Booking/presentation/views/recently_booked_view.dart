import 'package:flutter/material.dart';

class RecentlyBookedView extends StatelessWidget {
  const RecentlyBookedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recently Booked View')),
      body: const Center(child: Text('This is the Recently Booked View')),
    );
  }
}

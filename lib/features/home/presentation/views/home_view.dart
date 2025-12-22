import 'package:flutter/material.dart';
import 'package:kera_app/features/home/presentation/widgets/categories_section/categories_section.dart';
import 'package:kera_app/features/home/presentation/widgets/home_search_text_field/custom_search_text_field.dart';
import 'package:kera_app/features/home/presentation/widgets/home_appbar/home_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 24),
            child: Column(
              children: [
                HomeAppbar(),
                SizedBox(height: 24),
                CustomSearchTextField(),
                SizedBox(height: 24),
                CategoriesSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

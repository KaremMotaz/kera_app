import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kera_app/features/home/manager/home_tabs_cubit/home_tabs_cubit.dart';
import 'package:kera_app/features/home/presentation/widgets/categories_section/categories_tabs.dart';
import 'package:kera_app/features/home/presentation/widgets/categories_section/categories_content.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeTabsCubit(),
      child: const Column(
        children: [
          SizedBox(
            height: 40,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: CategoriesTabs(),
            ),
          ),
          CategoriesContent(),
        ],
      ),
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTabsCubit extends Cubit<int> {
  HomeTabsCubit() : super(0);

  void changeTab(int index) => emit(index);
}

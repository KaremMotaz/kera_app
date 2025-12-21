import 'package:flutter_bloc/flutter_bloc.dart';
import 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState());

  void changeTab(int index) {
    if (index == state.currentIndex) return;
    emit(MainState(currentIndex: index));
  }
}

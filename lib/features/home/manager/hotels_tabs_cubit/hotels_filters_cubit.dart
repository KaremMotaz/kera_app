import 'package:flutter_bloc/flutter_bloc.dart';

class HotelsFiltersCubit extends Cubit<int> {
  HotelsFiltersCubit() : super(0);

  void changeFilter(int index) => emit(index);
}

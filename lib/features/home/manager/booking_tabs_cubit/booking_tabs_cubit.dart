import 'package:flutter_bloc/flutter_bloc.dart';

class BookingTabsCubit extends Cubit<int> {
  BookingTabsCubit() : super(0);

  void changeTab(int index) => emit(index);
}

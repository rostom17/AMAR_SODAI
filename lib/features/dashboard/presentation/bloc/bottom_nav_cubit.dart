import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavState {
  final int selectedIndex;
  const BottomNavState({required this.selectedIndex});
}

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(const BottomNavState(selectedIndex: 0));

  void onChangeTab(int index) {
    if (index != state.selectedIndex) {
      emit(BottomNavState(selectedIndex: index));
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState());

  void toggleDrawer() {
    emit(state.copyWith(isDrawerExpanded: !state.isDrawerExpanded));

    if (!state.isDrawerExpanded) {
      emit(state.copyWith(useListTiles: false));
    }
  }

  void toggleListTiles({bool fromAnimationEnd = false}) {
    if (fromAnimationEnd) {
      if (state.isDrawerExpanded) {
        emit(state.copyWith(useListTiles: true));
      } else {
        emit(state.copyWith(useListTiles: false));
      }
    }
  }

  void onItemPressed(int index) {
    emit(state.copyWith(currentIdx: index));
  }
}

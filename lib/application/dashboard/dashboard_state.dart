part of 'dashboard_cubit.dart';

@freezed
sealed class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(false) bool isDrawerExpanded,
    @Default(false) bool useListTiles,
    @Default(0) int currentIdx,
  }) = _DashboardState;
}

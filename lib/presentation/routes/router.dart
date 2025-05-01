import 'package:auto_route/auto_route.dart';
import 'package:sora/presentation/routes/router.gr.dart';
import 'package:sora/utils/routes.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: Routes.dashboard,
      page: DashboardRoute.page,
      initial: true,
      children: [
        AutoRoute(path: Routes.home, page: HomeRoute.page),
        AutoRoute(path: Routes.library, page: LibraryRoute.page),
        AutoRoute(path: Routes.history, page: HistoryRoute.page),
        AutoRoute(path: Routes.settings, page: SettingsRoute.page),
      ],
    ),
  ];
}

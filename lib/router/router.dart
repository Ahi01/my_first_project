import 'package:auto_route/auto_route.dart';
import 'package:my_first_project/features/favorites/view/favorites_screen.dart';
import 'package:my_first_project/features/home/view/home_screen.dart';
import 'package:my_first_project/features/history/view/history_screen.dart';
import 'package:my_first_project/features/search/view/search.screen.dart';
import 'package:my_first_project/features/settings/view/settings_screen.dart';
part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
          children: [
            AutoRoute(
              page: SearchRoute.page,
              path: 'search',
            ),
            AutoRoute(
              page: FavoriutesRoute.page,
              path: 'favorites',
            ),
            AutoRoute(
              page: HistoryRoute.page,
              path: 'poems',
            ),
            AutoRoute(
              page: SettingsRoute.page,
              path: 'settings',
            ),
          ],
        ),
      ];
}

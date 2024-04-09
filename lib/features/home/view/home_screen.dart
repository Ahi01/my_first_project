import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/router/router.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _onPage(int index, TabsRouter tabsRouter) => setState(() {
        tabsRouter.setActiveIndex(index);
      });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AutoTabsRouter(
      routes: const [
        SearchRoute(),
        FavoriutesRoute(),
        HistoryRoute(),
        SettingsRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: theme.primaryColor,
            unselectedItemColor: theme.hintColor,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => _onPage(index, tabsRouter),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Поиск',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Избранное',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'История',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Настройки',
              ),
            ],
          ),
        );
      },
    );
  }
}

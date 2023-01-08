import 'package:flutter/material.dart';
import 'package:flutter_componentes/models/menu_option.dart';
import 'package:flutter_componentes/screens/screens.dart';

class AppRoputes {
  static const initialRoute = 'home';
  static final menuOption = <MenuOption>[
    MenuOption(
      route: 'home',
      name: 'Home Screen',
      screen: const HomeScreen(),
      icon: Icons.home,
    ),
    MenuOption(
      route: 'listView1',
      name: 'List view 1',
      screen: const ListView1Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'listView2',
      name: 'List view 2',
      screen: const ListView2Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alertas',
      screen: const AlertScreen(),
      icon: Icons.add_alert,
    ),
    MenuOption(
      route: 'card',
      name: 'cards',
      screen: const CardScreen(),
      icon: Icons.add_card,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listView1': (BuildContext context) => const ListView1Screen(),
  //   'listView2': (BuildContext context) => const ListView2Screen(),
  // };
  static Route<MaterialPageRoute> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ListView1Screen());
  }
}

import 'package:components_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:components_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    //MenuOption(
    //  route: 'home',
    //name: 'HomeScreen',
    //screen: const HomeScreen(),
    //icon: Icons.home_filled),
    MenuOption(
        route: 'listview1',
        name: 'ListView Tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.list_rounded),
    MenuOption(
        route: 'listview2',
        name: 'ListView Tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.list_alt_rounded),
    MenuOption(
        route: 'alert',
        name: 'Alertas - Alert',
        screen: const AlertScreen(),
        icon: Icons.notifications_active_rounded),
    MenuOption(
        route: 'cards',
        name: 'Tarjetas - Cards',
        screen: const CardScreen(),
        icon: Icons.crop_square_rounded),
    MenuOption(
        route: 'avatar',
        name: 'Circle - Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_rounded),
    MenuOption(
        route: 'animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.animation_rounded),
    MenuOption(
        route: 'inputs',
        name: 'Formulario - Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'slider',
        name: 'Slider - Screen',
        screen: const SliderScreen(),
        icon: Icons.slideshow)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }
    return appRoutes;
  }

  //static Map<String, Widget Function(BuildContext)> routes = {
  //'listview1': (context) => const Listview1Screen(),
  //'listview2': (context) => const Listview2Screen(),
  //'alert': (context) => const AlertScreen(),
  //'card': (context) => const CardScreen(),
  //'home': (context) => const HomeScreen(),
  //};
}

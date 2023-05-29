import 'package:flutter/material.dart';
import 'package:weather_app/pages/index.dart';

class AppRoutes {
  static const String none = "/";

  //home
  static const String homePage = "/home_page";
  static const errorPage = "/error_page";
}

appGeneratedRoutes(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.none:
      return MaterialPageRoute(
          settings:
              RouteSettings(name: settings.name, arguments: settings.arguments),
          builder: (BuildContext context) => const HomePage());
    case AppRoutes.errorPage:
      return MaterialPageRoute(
          settings:
              RouteSettings(name: settings.name, arguments: settings.arguments),
          builder: (BuildContext context) => const HomePage());

    default:
      return MaterialPageRoute(
          settings:
              RouteSettings(name: settings.name, arguments: settings.arguments),
          builder: (BuildContext context) => const HomePage());
  }
}

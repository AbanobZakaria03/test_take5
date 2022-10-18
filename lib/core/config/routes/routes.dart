import 'package:flutter/material.dart';

import '../../../presentation/login/login_screen.dart';


class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.routeName:
        return _materialRoute(const LoginScreen(), LoginScreen.routeName);

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _materialRoute(
            const Scaffold(
              body: SafeArea(
                child: Center(
                  child: Text('Route Error'),
                ),
              ),
            ),
            '404');
    }
  }

  static Route<dynamic> _materialRoute(Widget view, String routeName) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => view,
    );
  }
}

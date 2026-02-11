import 'package:flutter/material.dart';
import 'package:forexy/core/presentation/home_screen.dart';
import 'package:forexy/core/routing/routes.dart';

class AppRouter {

  Route generateRoute(RouteSettings settings) {

    switch (settings.name) {

      case AppRoutes.HomeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

        
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
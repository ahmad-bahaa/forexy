import 'package:flutter/material.dart';
import 'package:forexy/core/presentation/home_screen.dart';
import 'package:forexy/features//gold/presentations/screens/gold_screen.dart';
import 'package:forexy/core/routing/routes.dart';
import 'package:forexy/features/silver/presentation/screens/silver_screen.dart';

class AppRouter {

  Route generateRoute(RouteSettings settings) {

    switch (settings.name) {

      case AppRoutes.HomeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

        case AppRoutes.GoldScreen:
        return MaterialPageRoute(builder: (_) => const GoldScreen());
      case AppRoutes.SilverScreen:
        return MaterialPageRoute(builder: (_) => const SilverScreen());

        
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
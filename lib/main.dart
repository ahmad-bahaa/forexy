import 'package:flutter/material.dart';
import 'package:forexy/core/routing/app_router.dart';
import 'package:forexy/core/routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRoutes.HomeScreen,
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
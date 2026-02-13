import 'package:flutter/material.dart';
import 'package:forexy/core/networking/dio_helper.dart';
import 'package:forexy/core/routing/app_router.dart';
import 'package:forexy/core/routing/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      initialRoute: AppRoutes.HomeScreen,
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}

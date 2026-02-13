import 'package:flutter/material.dart';
import 'package:forexy/core/constants/app_colors.dart';
import 'package:forexy/core/constants/app_strings.dart';
import 'package:forexy/core/widgets/custom_button.dart';
import 'package:forexy/core/routing/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButton(
              text: AppStrings.gold,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.GoldScreen);
              },
              backgroundColor: AppColors.goldColor,
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: AppStrings.silver,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.SilverScreen);
              },
              backgroundColor: AppColors.silverColor,
            ),
          ],
        ),
      ),
    );
  }
}

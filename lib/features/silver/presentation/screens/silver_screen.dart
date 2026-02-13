import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forexy/core/constants/app_images.dart';
import 'package:forexy/features/silver/data/repo/silver_repo.dart';
import 'package:forexy/features/silver/presentation/cubit/silver_cubit.dart';
import 'package:forexy/features/silver/presentation/cubit/silver_state.dart';
import '../../../widgets/custom_text.dart';
import 'package:forexy/core/constants/app_colors.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return SilverCubit(SilverRepo())..getSilver();
      },
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Silver Screen',
            style: TextStyle(
              color: AppColors.silverColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: BlocBuilder<SilverCubit, SilverState>(
          builder: (BuildContext context, state) {
            if (state is SilverLoadingState) {
              return Center(
                child: CircularProgressIndicator(color: AppColors.silverColor),
              );
            } else if (state is SilverSuccessState) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.silver, width: 200, height: 250),
                    CustomText(
                      text: state.silverModel.price.toString(),
                      color: AppColors.silverColor,
                    ),
                    CustomText(text: " USD", color: Colors.white),
                  ],
                ),
              );
            } else if (state is SilverErrorState) {
              return Center(
                child: CustomText(text: state.message, color: Colors.red),
              );
            } else {
              return Center(
                child: CustomText(text: 'Error', color: Colors.red),
              );
            }
          },
        ),
      ),
    );
  }
}

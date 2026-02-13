import 'package:forexy/features/silver/data/model/silver_model.dart';

abstract class SilverState {}

class SilverInitialState extends SilverState {}

class SilverLoadingState extends SilverState {}

class SilverSuccessState extends SilverState {
  final SilverModel silverModel;

  SilverSuccessState({required this.silverModel});
}

class SilverErrorState extends SilverState {
  final String message;

  SilverErrorState(this.message);
}

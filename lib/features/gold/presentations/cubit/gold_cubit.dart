import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forexy/features/gold/data/repo/gold_repo.dart';

import 'gold_state.dart';

class GoldCubit extends Cubit<GoldState> {
  final GoldRepo goldRepo;

  GoldCubit(this.goldRepo) : super(GoldInitialState());
  Future<void> getGold() async {
    emit(GoldLoadingState());
    final result = await goldRepo.getGold();
    result.fold(
      (error) => emit(GoldErrorState(error)),
      (goldModel) => emit(GoldSuccessState(goldModel: goldModel)),
    );

  }

}
import 'package:dartz/dartz.dart';
import 'package:forexy/core/networking/api_constants.dart';
import 'package:forexy/core/networking/dio_helper.dart';
import 'package:forexy/features/gold/data/models/gold_model.dart';

class GoldRepo {

  Future<Either<String, GoldModel>> getGold()async{
    try {
      final responce = await DioHelper.getData(endPoint: ApiConstants.goldEndpoint);
      return Right(GoldModel.fromJson(responce.data));
    } catch (e) {
      return Left(e.toString());
    }

  }
}
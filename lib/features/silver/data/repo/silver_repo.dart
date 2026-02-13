import 'package:dartz/dartz.dart';
import 'package:forexy/core/networking/api_constants.dart';
import 'package:forexy/core/networking/dio_helper.dart';
import 'package:forexy/features/silver/data/model/silver_model.dart';

class SilverRepo {
  Future<Either<String, SilverModel>> getSilver() async {
    try {
      final responce = await DioHelper.getData(
        endPoint: ApiConstants.silverEndpoint,
      );
      return Right(SilverModel.fromJson(responce.data));
    } catch (e) {
      return Left(e.toString());
    }
  }
}

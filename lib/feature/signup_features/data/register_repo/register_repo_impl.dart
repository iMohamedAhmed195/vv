
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:vcare/core/errors/failure.dart';
import 'package:vcare/core/services/dio_helper.dart';
import 'package:vcare/core/services/end_point.dart';
import 'package:vcare/feature/signup_features/data/reggister_model/register_model.dart';
import 'package:vcare/feature/signup_features/data/register_repo/register_repo.dart';


class RegisterRepoImpl extends RegisterRepo {

  RegisterModel? registerModel;
  @override
  Future<Either<Failure, RegisterModel>> registerInApp(
      {required String name,
        required String email,
        required String phone,
        required String gender,
        required String password,
        required String confirmPassword}) async{
    try {
      var value =  await  DioHelper.postData(url: EndPoints.registerPoint, data: {
         'name': name,
        'email': email,
        'phone': phone,
        'gender': gender,
        'password': password,
        'password_confirmation': confirmPassword,
      });
      registerModel = RegisterModel.fromJson(value.data);
      return right(registerModel!);
    } catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
    return left(ServerFailure(e.toString()));
    }
  }
}

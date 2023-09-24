
import 'package:dartz/dartz.dart';
import 'package:vcare/core/errors/failure.dart';
import 'package:vcare/feature/signup_features/data/reggister_model/register_model.dart';

abstract class RegisterRepo {
  Future<Either<Failure, RegisterModel>> registerInApp({
    required   String name,
    required  String email,
    required  String phone,
    required String gender,
    required String password,
    required  String confirmPassword,
  });
}


import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vcare/feature/signup_features/data/reggister_model/register_failure_model.dart';
import 'package:vcare/feature/signup_features/data/reggister_model/register_model.dart';
import 'package:vcare/feature/signup_features/data/register_repo/register_repo.dart';

part 'singup_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.registerRepo) : super(SignupInitial());

  static SignUpCubit get(context) => BlocProvider.of(context);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  final RegisterRepo registerRepo;

  Future<void> registerApp(
      {required String name,
      required String email,
      required String phone,
      required String gender,
      required String password,
      required String confirmPassword}) async {
    emit(SignupLoading());
    var result = await registerRepo.registerInApp(
        name: name,
        email: email,
        phone: phone,
        gender: gender,
        password: password,
        confirmPassword: confirmPassword);

     result.fold((failure) {
          emit(SignupError(failure.errorMessage));
    }, (registerModel) {
      emit(SignupSuccess(registerModel)
      );
    });
  }
}

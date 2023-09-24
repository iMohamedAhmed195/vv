
import 'package:flutter/material.dart';
import 'package:vcare/core/constants/styles.dart';
import 'package:vcare/feature/signup_features/presentation/view/widget/sign_up_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Styles.kColor,
      body: SignUpBody(),
    );
  }
}

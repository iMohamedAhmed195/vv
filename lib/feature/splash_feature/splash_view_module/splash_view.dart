
import 'package:flutter/material.dart';
import 'package:vcare/feature/splash_feature/splash_view_module/Widget/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff174068),
      body: SplashViewBody()
    );
  }
}

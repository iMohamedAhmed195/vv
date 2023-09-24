
import 'package:go_router/go_router.dart';
import 'package:vcare/feature/doctor_details_feature/presentation/view/doctor_details_view.dart';
import 'package:vcare/feature/onboarding_feature/on_boarding_screen.dart';
import 'package:vcare/feature/profile_feature/profile_screen.dart';
import 'package:vcare/feature/signup_features/presentation/view/signup_view.dart';
import 'package:vcare/feature/splash_feature/splash_view_module/splash_view.dart';


abstract class AppRouter {
  static const kDoctorDetails = '/doctorDetails';
  static const kOnboarding = '/onBoarding';
  static const kRegister = '/register';
  static const kProfile = '/profile';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>   const SplashView(),
      ),
      GoRoute(
        path: kRegister,
        builder: (context, state) =>   const SignUpView(),
      ), GoRoute(
        path: kDoctorDetails,
        builder: (context, state) =>   const DoctorDetailsView(),
      ),
       GoRoute(
        path: kOnboarding,
        builder: (context, state) =>   const OnBoardingScreen(),
      ),GoRoute(
        path: kProfile,
        builder: (context, state) =>   const ProfileScreen(),
      ),

    ],
  );
}

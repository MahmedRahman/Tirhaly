import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrhaly/features/auth/presentation/pages/restPassword/forget_password_view.dart';
import 'package:thrhaly/features/auth/presentation/pages/sign_in_view.dart';
import 'package:thrhaly/features/onboard/presentation/pages/splash_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/SplashPage';

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
    ),
    GetPage(
      name: '/SignInView',
      page: () => SignInView(),
    ),
    GetPage(
      name: '/ForgetPasswordView',
      page: () => ForgetPasswordView(),
      transition: Transition.fade,
      curve: Curves.easeInOut,
      
     
    ),
  ];
}

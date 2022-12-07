import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrhaly/features/auth/presentation/pages/login_view.dart';

class OnboardSecondScreenController extends GetxController {
  @override
  void onReady() {
    Future.delayed(Duration(seconds: 1), () {
      Get.to(
        () => LoginView(),
        curve: Curves.easeInOut,
        transition: Transition.rightToLeft,
        duration: Duration(
          seconds: 1,
        ),
      );
    });

    super.onReady();
  }
}

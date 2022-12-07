import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrhaly/features/onboard/presentation/pages/onborad_second_view.dart';

class OnboardScreenController extends GetxController {
  @override
  void onReady() {
    Future.delayed(Duration(seconds: 1), () {
      Get.to(
        () => OnboardSecondView(),
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

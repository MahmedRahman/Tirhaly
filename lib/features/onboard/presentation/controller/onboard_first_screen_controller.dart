import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/routes/app_routes_management.dart';
import 'package:thrhaly/features/onboard/presentation/pages/onborad_second_view.dart';

class OnboardScreenController extends GetxController {
  @override
  void onReady() {
    Future.delayed(
      Duration(seconds: 1),
      () {
        Navigator.pushNamed(
          Get.context!,
          RouteGenerator.OnboardSecond,
        );
      },
    );

    super.onReady();
  }
}

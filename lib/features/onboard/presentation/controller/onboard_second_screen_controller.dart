import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/routes/app_routes_management.dart';
import 'package:thrhaly/features/auth/presentation/pages/login_view.dart';

class OnboardSecondScreenController extends GetxController {
  @override
  void onReady() {
    Future.delayed(
      Duration(seconds: 1),
      () {
        Navigator.pushNamed(
          Get.context!,
          RouteGenerator.login,
        );
      },
    );

    super.onReady();
  }
}

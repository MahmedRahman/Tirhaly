import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrhaly/features/onboard/presentation/controller/onboard_second_screen_controller.dart';

class OnboardSecondView extends GetView<OnboardSecondScreenController> {
  final OnboardSecondScreenController controller = Get.put(OnboardSecondScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "assets/images/Onboard_Screen_2.png",
        fit: BoxFit.cover,
      ),
    );
  }
}

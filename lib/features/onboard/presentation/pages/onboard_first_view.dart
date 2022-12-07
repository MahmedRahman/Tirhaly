import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrhaly/features/onboard/presentation/controller/onboard_first_screen_controller.dart';

class OnboardFirstView extends GetView<OnboardScreenController> {
  final OnboardScreenController controller = Get.put(OnboardScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "assets/images/Onboard_Screen_1.png",
        fit: BoxFit.cover,
      ),
    );
  }
}




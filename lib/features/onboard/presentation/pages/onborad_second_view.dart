import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/image_path.dart';
import 'package:thrhaly/features/onboard/presentation/controller/onboard_second_screen_controller.dart';
import 'package:thrhaly/features/onboard/presentation/widgets/base_on_boarding_page.dart';

class OnboardSecondView extends GetView<OnboardSecondScreenController> {
  final OnboardSecondScreenController controller =
      Get.put(OnboardSecondScreenController());
  @override
  Widget build(BuildContext context) {
    return const BaseOnBoardingPage(
      imagePath: AppImagePath.onBoardingTwo,
    );
  }
}

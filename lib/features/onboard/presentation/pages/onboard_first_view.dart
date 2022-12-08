import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/image_path.dart';
import 'package:thrhaly/features/onboard/presentation/controller/onboard_first_screen_controller.dart';
import 'package:thrhaly/features/onboard/presentation/widgets/base_on_boarding_page.dart';

class OnboardFirstView extends GetView<OnboardScreenController> {
  final OnboardScreenController controller = Get.put(OnboardScreenController());
  @override
  Widget build(BuildContext context) {
    return const BaseOnBoardingPage(
      imagePath: AppImages.onBoardingOne,
    );
  }
}

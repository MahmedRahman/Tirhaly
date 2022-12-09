import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rive/rive.dart';
import 'package:thrhaly/core/routes/app_routes_management.dart';
import 'package:thrhaly/features/onboard/presentation/helper/one_shot_animation_custom.dart';
import 'package:thrhaly/features/onboard/presentation/pages/onboard_first_view.dart';

class SplachController extends GetxController {
  late RiveAnimationController RiveAnimationcontroller;

  @override
  void onInit() {
    RiveAnimationcontroller = OneShotAnimationCustom(
      'logoAnmation',
      autoplay: true,
      onStop: () {
        Navigator.pushNamed(
          Get.context!,
          RouteGenerator.OnboardFirst,
        );
      },
    );
    super.onInit();
  }
}

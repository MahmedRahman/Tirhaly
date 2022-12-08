import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rive/rive.dart';
import 'package:thrhaly/features/onboard/presentation/one_shot_animation_custom.dart';
import 'package:thrhaly/features/onboard/presentation/pages/onboard_first_view.dart';

class SplachController extends GetxController {
  late RiveAnimationController RiveAnimationcontroller;

  @override
  void onInit() {
    RiveAnimationcontroller = OneShotAnimationCustom(
      'logoAnmation',
      autoplay: true,
      onStop: () {
        Navigator.push(
          Get.context!,
          PageTransition(
            curve: Curves.easeInOut,
            type: PageTransitionType.rightToLeft,
            duration: Duration(
              seconds: 1,
            ),
            child: OnboardFirstView(),
          ),
        );
      },
    );
    super.onInit();
  }
}

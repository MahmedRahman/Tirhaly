import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';
import 'package:thrhaly/core/const.dart';
import 'package:thrhaly/features/onboard/presentation/controller/splach_controller.dart';

class SplashView extends GetView<SplachController> {
  final SplachController controller = Get.put(SplachController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppConst.KColorBlue),
      body: Center(
        child: Container(
          width: 230,
          height: 230,
          child: RiveAnimation.asset(
            "assets/rive/logo.riv",
            controllers: [controller.RiveAnimationcontroller],
          ),
        ),
      ),
    );
  }
}

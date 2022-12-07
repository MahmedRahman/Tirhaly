import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseOnBoardingPage extends StatelessWidget {
  const BaseOnBoardingPage({Key? key, required this.imagePath})
      : super(key: key);

  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

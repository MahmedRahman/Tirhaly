import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/image_path.dart';
import 'package:thrhaly/features/auth/presentation/widgets/skip_button.dart';
import 'package:thrhaly/features/home/presentation/pages/home_view.dart';
import '../widgets/login_button.dart';
import 'package:thrhaly/core/const.dart';
import 'package:thrhaly/features/auth/presentation/pages/sign_in_view.dart';

class LoginView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              AppImagePath.Onboard_Screen_3,
              fit: BoxFit.fill,
            ),
            Positioned(
              right: 0,
              child: SkipButton(
                onTap: () {
                  Get.to(() => HomeView());
                },
              ),
            ),
            Positioned(
              bottom: 20.h,
              left: 0,
              right: 0,
              child: LoginButton(
                ButtonBackGroundColor: Color(
                  AppConst.KColorGreen,
                ),
                title: "sign in".tr,
                onPressed: () {
                  Get.to(
                    () => SignInView(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

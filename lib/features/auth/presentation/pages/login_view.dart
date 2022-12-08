import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/image_path.dart';
import 'package:thrhaly/features/auth/presentation/widgets/skip_button.dart';
import 'package:thrhaly/features/home/presentation/pages/home_view.dart';
import 'package:thrhaly/features/onboard/presentation/widgets/base_on_boarding_page.dart';
import '../widgets/login_button.dart';
import 'package:thrhaly/core/const.dart';
import 'package:thrhaly/features/auth/presentation/pages/sign_in_view.dart';

class LoginView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: SkipButton(
          onTap: () {
            Get.to(() => HomeView());
          },
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          const BaseOnBoardingPage(
            imagePath: AppImagePath.Onboard_Screen_3,
          ),
          Positioned(
            bottom: 43.h,
            left: 20.w,
            right: 20.w,
            child: LoginButton(
              tag: "login",
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
    );
  }
}

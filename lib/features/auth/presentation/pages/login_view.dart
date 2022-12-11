import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const/app_assets.dart';
import 'package:thrhaly/core/routes/app_routes_management.dart';
import 'package:thrhaly/features/auth/presentation/widgets/skip_button.dart';
import 'package:thrhaly/features/home/presentation/pages/home_view.dart';
import 'package:thrhaly/features/onboard/presentation/widgets/base_on_boarding_page.dart';
import '../widgets/login_button.dart';
import 'package:thrhaly/core/const/app_colors.dart';
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
            Navigator.pushNamed(
              context,
              RouteGenerator.home,
            );
          },
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          const BaseOnBoardingPage(
            imagePath: AppAssets.onBoardingThere,
          ),
          Positioned(
            bottom: 43.h,
            left: 20.w,
            right: 20.w,
            child: LoginButton(
              tag: "login",
              ButtonBackGroundColor: Color(
                AppColors.KColorGreen,
              ),
              title: "sign in".tr,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteGenerator.SignIn,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

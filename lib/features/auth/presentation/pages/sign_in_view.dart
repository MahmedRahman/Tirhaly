import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:thrhaly/core/const/app_colors.dart';
import 'package:thrhaly/core/const/app_assets.dart';
import 'package:thrhaly/core/routes/app_routes_management.dart';
import 'package:thrhaly/core/spacer.dart';
import 'package:thrhaly/features/auth/presentation/widgets/base_auth_page.dart';
import 'package:thrhaly/features/auth/presentation/widgets/custom_titiled_check_box.dart';
import 'package:thrhaly/features/auth/presentation/widgets/form_title.dart';
import 'package:thrhaly/features/auth/presentation/widgets/login_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_social_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_text_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_text_form_field.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_two_text_button.dart';

class SignInView extends GetView {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BaseAuthPage(
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 73.h,
            ),
            FormTitle(
              firstText: "registration".tr,
              scandText: "registration_login".tr,
            ),
            SpacerH17(),
            MyTextFormField(
              tag: "username",
              labelText: "user name".tr,
              hintText: "enter user name".tr,
              AssetImageIcon: AppAssets.iconSvgUser,
              validator: (value) {
                if (value!.isEmpty == true || value == "") {
                  return "Required field".tr;
                }
                return null;
              },
            ),
            SpacerH15(),
            MyTextFormField(
              tag: "pass",
              labelText: "password".tr,
              hintText: "enter password".tr,
              AssetImageIcon: AppAssets.iconSvgPass,
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty == true || value == "") {
                  return "Required field".tr;
                }
                return null;
              },
            ),
            SpacerH13(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTitledCheckBox(
                  title: "Remember me".tr,
                  onChanged: (bool) {},
                ),
                MyTextButton(
                  text: "Forgot your password?".tr,
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RouteGenerator.ForgetPassword,
                    );
                  },
                ),
              ],
            ),
            SpacerH15(),
            LoginButton(
              tag: "login",
              ButtonBackGroundColor: Color(AppColors.KColorBlue),
              title: "sign in".tr,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteGenerator.home,
                );
              },
            ),
            SpacerH20(),
            Center(
              child: Text(
                "log in with".tr,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            SpacerH17(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MySocialButton(
                  iconAsset: AppAssets.iconSvgGoogle,
                  onPressed: () {},
                ),
                SpacerW29(),
                MySocialButton(
                  iconAsset: AppAssets.iconSvgTwitter,
                  onPressed: () {},
                ),
                SpacerW29(),
                MySocialButton(
                  iconAsset: AppAssets.iconSvgApple,
                  onPressed: () {},
                ),
              ],
            ),
            SpacerH18(),
            MyTwoTextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteGenerator.SignUp,
                );
              },
              firstText: "Don\'t have an account?".tr,
              scandText: "Create an account".tr,
            ),
          ],
        ),
      ),
    );
  }
}

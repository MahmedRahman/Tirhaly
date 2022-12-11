import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:thrhaly/core/const/app_colors.dart';
import 'package:thrhaly/core/const/app_assets.dart';
import 'package:thrhaly/core/routes/app_routes_management.dart';
import 'package:thrhaly/core/spacer.dart';
import 'package:thrhaly/features/auth/presentation/pages/restPassword/otp_view.dart';
import 'package:thrhaly/features/auth/presentation/widgets/base_auth_page.dart';
import 'package:thrhaly/features/auth/presentation/widgets/form_title.dart';
import 'package:thrhaly/features/auth/presentation/widgets/login_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_text_form_field.dart';

class ForgetPasswordView extends GetView {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BaseAuthPage(
      withBackButton: true,
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 73.h,
            ),
            FormTitle(
              firstText: "I forgot".tr,
              scandText: "password?".tr,
            ),
            SpacerH12(),
            Text(
              "Please type your email below".tr,
              style: Theme.of(Get.context!).textTheme.headlineSmall!.copyWith(
                    height: 1.5,
                  ),
            ),
            SpacerH19(),
            Column(
              children: [
                MyTextFormField(
                  tag: "pass",
                  labelText: "email".tr,
                  hintText: "enter email".tr,
                  AssetImageIcon: AppAssets.iconSvgEmail,
                  validator: (value) {
                    if (value!.isEmpty == true || value == "") {
                      return "Required field".tr;
                    }
                    return null;
                  },
                ),
                SpacerH21(),
                LoginButton(
                  tag: 'login',
                  ButtonBackGroundColor: Color(AppColors.KColorBlue),
                  title: "send".tr,
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RouteGenerator.otp,
                    );
                  },
                ),
              ],
            ),
            SpacerH15(),
          ],
        ),
      ),
    );
  }
}

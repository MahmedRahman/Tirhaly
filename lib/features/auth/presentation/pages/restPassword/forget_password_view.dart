import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const.dart';
import 'package:thrhaly/core/image_path.dart';
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
            FadeInUp(
              duration: Duration(
                milliseconds: (0.5 * 1000).round(),
              ),
              from: 30,
              child: Column(
                children: [
                  MyTextFormField(
                    tag: "email",
                    labelText: "email".tr,
                    hintText: "enter email".tr,
                    AssetImageIcon: AppImagePath.icon_email,
                    validator: (value) {
                      if (value!.isEmpty == true || value == "") {
                        return "Required field".tr;
                      }
                      return null;
                    },
                  ),
                  SpacerH21(),
                  LoginButton(
                    ButtonBackGroundColor: Color(AppConst.KColorBlue),
                    title: "send".tr,
                    onPressed: () {
                      _formKey.currentState!.validate();
                      Get.to(() => OtpView());
                    },
                  ),
                ],
              ),
            ),
            SpacerH15(),
          ],
        ),
      ),
    );
  }
}

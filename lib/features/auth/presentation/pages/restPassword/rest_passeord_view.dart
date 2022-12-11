import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const/app_colors.dart';
import 'package:thrhaly/core/const/app_assets.dart';
import 'package:thrhaly/core/routes/app_routes_management.dart';
import 'package:thrhaly/core/spacer.dart';
import 'package:thrhaly/features/auth/presentation/widgets/back_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/base_auth_page.dart';
import 'package:thrhaly/features/auth/presentation/widgets/form_title.dart';
import 'package:thrhaly/features/auth/presentation/widgets/login_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_text_form_field.dart';
import 'package:thrhaly/features/home/presentation/pages/home_view.dart';

class ResetPasswordView extends GetView {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BaseAuthPage(
      withBackButton: true,
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 73.h,
            ),
            FormTitle(
              firstText: "repeat".tr,
              scandText: "password".tr,
            ),
            SpacerH19(),
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
            SpacerH15(),
            MyTextFormField(
              tag: "repass",
              labelText: "Reset password".tr,
              hintText: "Enter the password".tr,
              AssetImageIcon: AppAssets.iconSvgPass,
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty == true || value == "") {
                  return "Required field".tr;
                }
                return null;
              },
            ),
            SpacerH18(),
            LoginButton(
              tag: 'login',
              ButtonBackGroundColor: Color(AppColors.KColorBlue),
              title: "save".tr,
              onPressed: () {
                  Navigator.pushNamed(
                context,
                RouteGenerator.home,
              );
              },
            ),
            SpacerH15(),
          ],
        ),
      ),
    );
  }
}

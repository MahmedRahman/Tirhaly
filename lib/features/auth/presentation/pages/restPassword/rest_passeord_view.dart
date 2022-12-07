import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const.dart';
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
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          actions: [
            backButton(
              onPressed: () {
                Get.back();
              },
            )
          ],
        ),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 73.h,
              ),
              FormTitle(
                firstText: "إعادة",
                scandText: "كلمة المرور",
              ),
              SpacerH19(),
              MyTextFormField(
                tag: "pass",
                labelText: "كلمة المرور",
                hintText: "ادخل كلمة المرور",
                AssetImageIcon: "assets/images/icon_pass.png",
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty == true || value == "") {
                    return "حقل مطلوب";
                  }
                  return null;
                },
              ),
              SpacerH15(),
              MyTextFormField(
                tag: "pass",
                labelText: "إعادة كلمة المرور",
                hintText: "ادخل كلمة المرور",
                AssetImageIcon: "assets/images/icon_pass.png",
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty == true || value == "") {
                    return "حقل مطلوب";
                  }
                  return null;
                },
              ),
              SpacerH18(),
              LoginButton(
                ButtonBackGroundColor: Color(AppConst.KColorBlue),
                title: "حفظ",
                onPressed: () {
                  Get.to(() => HomeView());
                },
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ));
  }
}

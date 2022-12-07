import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const.dart';
import 'package:thrhaly/core/spacer.dart';
import 'package:thrhaly/features/auth/presentation/pages/restPassword/otp_view.dart';
import 'package:thrhaly/features/auth/presentation/pages/sigin_up_view.dart';
import 'package:thrhaly/features/auth/presentation/widgets/back_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/form_title.dart';
import 'package:thrhaly/features/auth/presentation/widgets/login_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_check_box.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_social_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_text_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_text_form_field.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_two_text_button.dart';
import 'package:thrhaly/features/home/presentation/pages/home_view.dart';

class ResetPasswordView extends GetView {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: ListView(
            children: [
              SpacerH10(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    backButton(onPressed: () {
                      Get.back();
                    }),
                    FormTitle(
                      firstText: "إعادة",
                      scandText: "كلمة المرور",
                    ),
                    SpacerH15(),
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
                    SpacerH10(),
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
                  ],
                ),
              ),
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
        ),
      ),
    );
  }
}

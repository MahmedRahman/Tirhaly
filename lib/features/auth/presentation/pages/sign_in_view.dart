import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const.dart';
import 'package:thrhaly/core/spacer.dart';
import 'package:thrhaly/features/auth/presentation/pages/restPassword/forget_password_view.dart';
import 'package:thrhaly/features/auth/presentation/pages/sigin_up_view.dart';
import 'package:thrhaly/features/auth/presentation/widgets/form_title.dart';
import 'package:thrhaly/features/auth/presentation/widgets/login_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_check_box.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_logo.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_social_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_text_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_text_form_field.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_two_text_button.dart';

class SignInView extends GetView {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 47.w),
            children: [
              SizedBox(
                height: 70,
              ),
              Column(
                children: [
                  FormTitle(
                    firstText: "registration".tr,
                    scandText: "registration_login".tr,
                  ),
                  SpacerH15(),
                  MyTextFormField(
                    tag: "username",
                    labelText: "اسم المستخدم",
                    hintText: "ادخل اسم المستخدم",
                    AssetImageIcon: "assets/images/icon_user.png",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyCheckbox(
                        title: "تذكرني",
                      ),
                      MyTextButton(
                        text: "نسيت كلمة المرور؟",
                        onPressed: () {
                          Get.to(() => ForgetPasswordView());
                        },
                      ),
                    ],
                  ),
                ],
              ),
              LoginButton(
                ButtonBackGroundColor: Color(AppConst.KColorBlue),
                title: "تسجيل الدخول",
                onPressed: () {
                  _formKey.currentState!.validate();
                },
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "أو الدخول بواسطة",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff8D8D8D),
                  ),
                ),
              ),
              SpacerH15(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MySocialButton(
                    iconAsset: "assets/svg/appel_icon.svg",
                    onPressed: () {},
                  ),
                  MySocialButton(
                    iconAsset: "assets/svg/twitter_icon.svg",
                    onPressed: () {},
                  ),
                  MySocialButton(
                    iconAsset: "assets/svg/googel_icon.svg",
                    onPressed: () {},
                  ),
                ],
              ),
              SpacerH15(),
              MyTwoTextButton(
                onPressed: () {
                  Get.to(
                    () => SignUpView(),
                  );
                },
                firstText: "ليس لديك حساب؟",
                scandText: "أنشئ حساب",
              ),
              SpacerH15(),
              MyLogo(),
            ],
          ),
        ),
      ),
    );
  }
}

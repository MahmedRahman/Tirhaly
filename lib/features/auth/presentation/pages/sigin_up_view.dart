import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const.dart';
import 'package:thrhaly/core/image_path.dart';
import 'package:thrhaly/core/spacer.dart';
import 'package:thrhaly/features/auth/presentation/pages/sign_in_view.dart';
import 'package:thrhaly/features/auth/presentation/widgets/form_title.dart';
import 'package:thrhaly/features/auth/presentation/widgets/login_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_check_box.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_social_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_text_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_text_form_field.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_two_text_button.dart';

class SignUpView extends GetView {
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
                  children: [
                    FormTitle(
                      firstText: "welcome".tr,
                      scandText: "in trhihaly".tr,
                    ),
                    SpacerH15(),
                    MyTextFormField(
                      tag: "username",
                      labelText: "user name".tr,
                      hintText: "enter user name".tr,
                      AssetImageIcon: AppImagePath.icon_user,
                      validator: (value) {
                        if (value!.isEmpty == true || value == "") {
                          return "Required field".tr;
                        }
                        return null;
                      },
                    ),
                    SpacerH10(),
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
                    SpacerH10(),
                    MyTextFormField(
                      tag: "pass",
                      labelText: "password".tr,
                      hintText: "enter password".tr,
                      AssetImageIcon: AppImagePath.icon_pass,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty == true || value == "") {
                          return "Required field".tr;
                        }
                        return null;
                      },
                    ),
                    SpacerH10(),
                    MyCheckbox(
                      title: "terms and conditions".tr,
                    ),
                  ],
                ),
              ),
              LoginButton(
                ButtonBackGroundColor: Color(
                  AppConst.KColorBlue,
                ),
                title: "sign in".tr,
                onPressed: () {
                  _formKey.currentState!.validate();
                },
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "log in with".tr,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Color(AppConst.KColorBlack),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MySocialButton(
                    iconAsset: AppImagePath.icon_apple,
                    onPressed: () {},
                  ),
                  MySocialButton(
                    iconAsset: AppImagePath.icon_twitter,
                    onPressed: () {},
                  ),
                  MySocialButton(
                    iconAsset: AppImagePath.icon_googel,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              MyTwoTextButton(
                onPressed: () {
                  Get.to(
                    () => SignInView(),
                  );
                },
                firstText: "Don\'t have an account?",
                scandText: "sign in".tr,
              )
            ],
          ),
        ),
      ),
    );
  }
}

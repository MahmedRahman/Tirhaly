import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:thrhaly/core/const.dart';
import 'package:thrhaly/core/image_path.dart';
import 'package:thrhaly/core/spacer.dart';
import 'package:thrhaly/features/auth/presentation/pages/restPassword/forget_password_view.dart';
import 'package:thrhaly/features/auth/presentation/pages/sigin_up_view.dart';
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
                Column(
                  children: [
                    FormTitle(
                      firstText: "registration".tr,
                      scandText: "registration_login".tr,
                    ),
                    SpacerH17(),
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
                    SpacerH13(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTitledCheckBox(
                          title: "تذكرني",
                          onChanged: (bool) {},
                        ),
                        MyTextButton(
                          text: "نسيت كلمة المرور؟",
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    child: ForgetPasswordView()));

                            // Get.to(() => ForgetPasswordView());
                          },
                        ),
                      ],
                    ),
                    SpacerH15(),
                  ],
                ),
                LoginButton(
                  ButtonBackGroundColor: Color(AppConst.KColorBlue),
                  title: "تسجيل الدخول",
                  onPressed: () {
                    _formKey.currentState!.validate();
                  },
                ),
                SpacerH20(),
                Center(
                  child: Text(
                    "أو الدخول بواسطة",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                SpacerH17(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MySocialButton(
                      iconAsset: AppImagePath.icon_google,
                      onPressed: () {},
                    ),
                    SpacerW29(),
                    MySocialButton(
                      iconAsset: AppImagePath.icon_twitter,
                      onPressed: () {},
                    ),
                    SpacerW29(),
                    MySocialButton(
                      iconAsset: AppImagePath.icon_apple,
                      onPressed: () {},
                    ),
                  ],
                ),
                SpacerH18(),
                MyTwoTextButton(
                  onPressed: () {
                    Get.to(
                      () => SignUpView(),
                    );
                  },
                  firstText: "ليس لديك حساب؟",
                  scandText: "أنشئ حساب",
                ),
              ],
            )));
  }
}

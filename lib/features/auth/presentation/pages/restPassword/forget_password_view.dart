import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const.dart';
import 'package:thrhaly/core/spacer.dart';
import 'package:thrhaly/features/auth/presentation/pages/restPassword/otp_view.dart';
import 'package:thrhaly/features/auth/presentation/widgets/back_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/base_auth_page.dart';
import 'package:thrhaly/features/auth/presentation/widgets/form_title.dart';
import 'package:thrhaly/features/auth/presentation/widgets/login_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_text_form_field.dart';

class ForgetPasswordView extends GetView {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BaseAuthPage(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          backButton(onPressed: () {
            Get.back();
          })
        ],
      ),
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
              firstText: "نسيت",
              scandText: "كلمة المرور؟",
            ),
            SpacerH12(),
            Text(
              "الرجاء كتابة البريد الإلكتروني الخاص بك أدناه\nللحصول على كود التأكيد",
              style: Theme.of(Get.context!).textTheme.headlineSmall,
            ),
            SpacerH19(),
            FadeInUp(
              from: 30,
              duration: const Duration(milliseconds: 500),
              child: Column(
                children: [
                  MyTextFormField(
                    tag: "email",
                    labelText: "البريد الإلكتروني",
                    hintText: "ادخل البريد الإلكتروني",
                    AssetImageIcon: "assets/images/icon_email.png",
                    validator: (value) {
                      if (value!.isEmpty == true || value == "") {
                        return "حقل مطلوب";
                      }
                      return null;
                    },
                  ),
                  SpacerH21(),
                  LoginButton(
                    ButtonBackGroundColor: Color(AppConst.KColorBlue),
                    title: "إرسال",
                    onPressed: () {
                      _formKey.currentState!.validate();
                      Get.to(() => OtpView());
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

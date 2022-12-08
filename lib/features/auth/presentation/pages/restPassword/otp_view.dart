import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:thrhaly/core/const.dart';
import 'package:thrhaly/core/spacer.dart';
import 'package:thrhaly/features/auth/presentation/pages/restPassword/rest_passeord_view.dart';
import 'package:thrhaly/features/auth/presentation/widgets/base_auth_page.dart';
import 'package:thrhaly/features/auth/presentation/widgets/form_title.dart';
import 'package:thrhaly/features/auth/presentation/widgets/login_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_text_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/pin_code_field.dart';
// import this

class OtpView extends GetView {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String codeValue = "";
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return BaseAuthPage(
      withBackButton: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 73.h,
          ),
          FormTitle(
            firstText: "code".tr,
            scandText: "confirmation".tr,
          ),
          SpacerH12(),
          Text(
            "We have sent you a confirmation code to your email".tr,
            style: Theme.of(Get.context!).textTheme.headlineSmall,
          ),
          Text(
            "Dina@Tirhaly.com.sa",
            style: Theme.of(Get.context!).textTheme.headlineSmall,
          ),
          SpacerH21(),
          Center(
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: _formKey,
              child: PinCodeField(
                formKey: _formKey,
                validator: (value) {
                  if (value!.length == 6) return '';
                  return 'Please enter the code with a minimum of 6 digits'.tr;
                },
                withTitle: false,
                onChanged: (value) {},
                onCompleted: (_) => {},
              ),
            ),
          ),
          MyTextButton(text: "Resend".tr, onPressed: () {}),
          SpacerH17(),
          LoginButton(
            tag: "forgetPassword",
            ButtonBackGroundColor: Color(AppConst.KColorBlue),
            title: "done".tr,
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  duration: Duration(
                    milliseconds: (0.5 * 1000).round(),
                  ),
                  child: ResetPasswordView(),
                ),
              );
            },
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

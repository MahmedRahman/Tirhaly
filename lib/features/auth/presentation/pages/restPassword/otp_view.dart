import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:thrhaly/core/const.dart';
import 'package:thrhaly/core/spacer.dart';
import 'package:thrhaly/features/auth/presentation/pages/restPassword/rest_passeord_view.dart';
import 'package:thrhaly/features/auth/presentation/widgets/back_button.dart';
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
  void codeUpdated() {
    // setState(() {
    //   codeValue = code!;
    // });
  }

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 73.h,
            ),
            FormTitle(
              firstText: "كود",
              scandText: "التأكيد",
            ),
            SpacerH12(),
            Text(
              "لقد أرسلنا لك كود التأكيد على الإيميل",
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
                    return 'يرجي ادخال الكود بشكل صحيح لا يقل عن ٦ ارقام';
                  },
                  withTitle: false,
                  onChanged: (value) {},
                  onCompleted: (_) => {},
                ),
              ),
            ),
            MyTextButton(text: "إعادة إرسال", onPressed: () {}),
            SpacerH17(),
            LoginButton(
              ButtonBackGroundColor: Color(AppConst.KColorBlue),
              title: "تأكيد",
              onPressed: () {
                // if (_formKey.currentState!.validate()) {
                //   _formKey.currentState!.save();
                  Get.to(() => ResetPasswordView());
                // }
              },
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ));
  }
}

MyTextFormFieldNumber({
  required String? Function(String?)? validator,
  bool obscureText = false,
  required Object tag,
}) =>
    TextFormField(
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        fillColor: Color(0xffE8E8E8),
        filled: true,
        prefixIconColor: Color(0xff515151),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide.none,
        ),
        errorStyle: TextStyle(
          color: Color(0xffF16623),
          fontWeight: FontWeight.w600,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide.none,
        ),
      ),
    );

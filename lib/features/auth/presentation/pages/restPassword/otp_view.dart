import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const.dart';
import 'package:thrhaly/core/spacer.dart';
import 'package:thrhaly/features/auth/presentation/pages/restPassword/rest_passeord_view.dart';
import 'package:thrhaly/features/auth/presentation/widgets/back_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/form_title.dart';
import 'package:thrhaly/features/auth/presentation/widgets/login_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_text_button.dart';
// import this

class OtpView extends GetView {
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
                      firstText: "كود",
                      scandText: "التأكيد",
                    ),
                    SpacerH5(),
                    Text(
                      "لقد أرسلنا لك كود التأكيد على الإيميل",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color(AppConst.KColorBlue),
                      ),
                    ),
                    SpacerH5(),
                    Text(
                      "Dina@Tirhaly.com.sa",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color(AppConst.KColorBlue),
                      ),
                    ),
                    SpacerH10(),
                    Row(
                      children: [
                        Expanded(
                          child: MyTextFormFieldNumber(
                            tag: "email",
                            validator: (value) {
                              if (value!.isEmpty == true || value == "") {
                                return "حقل مطلوب";
                              }
                              return null;
                            },
                          ),
                        ),
                        SpacerW5(),
                        Expanded(
                          child: MyTextFormFieldNumber(
                            tag: "email",
                            validator: (value) {
                              if (value!.isEmpty == true || value == "") {
                                return "حقل مطلوب";
                              }
                              return null;
                            },
                          ),
                        ),
                        SpacerW5(),
                        Expanded(
                          child: MyTextFormFieldNumber(
                            tag: "email",
                            validator: (value) {
                              if (value!.isEmpty == true || value == "") {
                                return "حقل مطلوب";
                              }
                              return null;
                            },
                          ),
                        ),
                        SpacerW5(),
                        Expanded(
                          child: MyTextFormFieldNumber(
                            tag: "email",
                            validator: (value) {
                              if (value!.isEmpty == true || value == "") {
                                return "حقل مطلوب";
                              }
                              return null;
                            },
                          ),
                        ),
                        SpacerW5(),
                        Expanded(
                          child: MyTextFormFieldNumber(
                            tag: "email",
                            validator: (value) {
                              if (value!.isEmpty == true || value == "") {
                                return "حقل مطلوب";
                              }
                              return null;
                            },
                          ),
                        ),
                        SpacerW5(),
                        Expanded(
                          child: MyTextFormFieldNumber(
                            tag: "email",
                            validator: (value) {
                              if (value!.isEmpty == true || value == "") {
                                return "حقل مطلوب";
                              }
                              return null;
                            },
                          ),
                        )
                      ],
                    ),
                    SpacerH10(),
                  ],
                ),
              ),
              MyTextButton(text: "إعادة إرسال", onPressed: () {}),
              LoginButton(
                ButtonBackGroundColor: Color(AppConst.KColorBlue),
                title: "تأكيد",
                onPressed: () {
                  //_formKey.currentState!.validate();
                  Get.to(() => ResetPasswordView());
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
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xff8D8D8D),
            width: 2.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xffF16623),
            width: 2.0,
          ),
        ),
        errorStyle: TextStyle(
          color: Color(0xffF16623),
          fontWeight: FontWeight.w600,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(AppConst.KColorBlue),
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xff8D8D8D),
            width: 2.0,
          ),
        ),
      ),
    );

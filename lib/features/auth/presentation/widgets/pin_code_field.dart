import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:thrhaly/core/const/app_colors.dart';

class PinCodeField extends StatelessWidget {
  PinCodeField(
      {@required this.onCompleted,
      @required this.onChanged,
      @required this.validator,
      @required this.formKey,
      this.withTitle = true});
  final ValueChanged<String>? onCompleted;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final bool? withTitle;
  GlobalKey<FormState>? formKey = GlobalKey<FormState>();
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: FormField<String>(
        validator: (String? value) {
          if (validator != null) {
            final String valid = validator!(value ?? '')!;

            return valid;
          }

          return null;
        },
        builder: (field) => Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            PinCodeTextField(
              appContext: context,
              pastedTextStyle: TextStyle(
                color: Color(AppColors.KColorPinCode),
                fontWeight: FontWeight.bold,
              ),
              length: 6,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                activeColor: Color(AppColors.KColorPinCode),
                disabledColor: Color(0xffFBF4EC),
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 38.h,
                fieldWidth: 38.w,
                inactiveColor: field.hasError ? Colors.red : Color(AppColors.KColorPinCode),
                selectedColor: Color(AppColors.KColorPinCode),
                selectedFillColor: Colors.white,
                inactiveFillColor: Color(AppColors.KColorPinCode),
                activeFillColor: Color(AppColors.KColorPinCode),
              ),
              cursorColor: Color(0xff1BA9DF),
              animationDuration: Duration(milliseconds: 300),
              // textStyle: pinCodeTextStyle,
              backgroundColor: Colors.transparent,
              enableActiveFill: true,
              keyboardType: TextInputType.number,
              onCompleted: (value) {
                onCompleted!.call(value);
              },
              onChanged: (value) {
                print(value);
                field.setValue(value);
                field.validate();
                onChanged!.call(value);
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                return true;
              },
            ),
            if (validator != null)
              Visibility(
                  visible: field.hasError,
                  replacement: SizedBox.shrink(),
                  child: Text(
                    '${field.errorText}',
                    style: TextStyle(
                      fontSize: 10.h,
                      height: 0.6,
                      color: Colors.red.shade800,
                    ),
                  )),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const.dart';
import 'package:thrhaly/core/extensions/fontWeight_ex.dart';
import 'package:thrhaly/core/image_path.dart';

MyTextFormField({
  required String hintText,
  required String AssetImageIcon,
  required String? Function(String?)? validator,
  bool obscureText = false,
  required String labelText,
  required Object tag,
}) =>
    SizedBox(
      height: 50.h,
      child: Hero(
        tag: tag,
        child: Material(
          type: MaterialType.transparency,
          child: TextFormField(
            obscureText: obscureText,
            validator: validator,
            cursorColor: Color(AppConst.KColorBlue),
            decoration: InputDecoration(
              labelText: labelText,
              floatingLabelStyle: TextStyle(
                fontWeight: FontWeightEx.bold,
              ),
              labelStyle:
                  Theme.of(Get.context!).textTheme.headlineSmall!.copyWith(
                        color: Color(AppConst.KColorBlack),
                        fontWeight: FontWeightEx.medium,
                      ),
              hintText: hintText,
              hintStyle:
                  Theme.of(Get.context!).textTheme.headlineSmall!.copyWith(
                        color: Color(AppConst.KColorBlack),
                      ),
              prefixIcon: SvgPicture.asset(AssetImageIcon).paddingAll(15),
              prefixIconColor: Color(0xff515151),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(
                  color: Color(0xff8D8D8D),
                  width: .8.w,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(
                  color: Color(0xffF16623),
                  width: .8.w,
                ),
              ),
              errorStyle: TextStyle(
                color: Color(0xffF16623),
                fontWeight: FontWeight.w600,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(
                  color: Color(AppConst.KColorBlue),
                  width: .8.w,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(
                  color: Color(0xff8D8D8D),
                  width: .8.w,
                ),
              ),
            ),
          ),
        ),
      ),
    );

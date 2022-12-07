import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const.dart';
import 'package:thrhaly/core/fontWeight_ex.dart';

Widget LoginButton({
  required void Function()? onPressed,
  required Color? ButtonBackGroundColor,
  required String title,
}) =>
    Hero(
      tag: "LoginButton",
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8.w,
          vertical: 8.h,
        ),
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.r),
          ),
          color: ButtonBackGroundColor,
          clipBehavior: Clip.antiAlias,
          child: MaterialButton(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onPressed: onPressed,
            minWidth: Get.width,
            height: 40.h,
            child: Text(
              title,
              style: Theme.of(Get.context!).textTheme.headlineMedium!.copyWith(
                    color: Colors.white,
                    fontSize: 15.sp,
                  ),
            ),
          ),
        ),
      ),
    );

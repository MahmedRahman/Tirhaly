import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const/app_colors.dart';

MyTwoTextButton({
  required void Function()? onSecondTextPressed,
  required String firstText,
  required String secondText,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        firstText,
        style: Theme.of(Get.context!).textTheme.headlineSmall!.copyWith(
            color: Color(AppColors.KColorBlack),
            fontSize: 13.sp,
            fontWeight: FontWeight.w300),
      ),
      SizedBox(
        width: 5,
      ),
      InkWell(
        onTap: onSecondTextPressed,
        child: Text(
          secondText,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Color(AppColors.KColorGreen),
          ),
        ),
      ),
    ],
  );
}

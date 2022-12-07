import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

MyTextButton({
  required String? text,
  required void Function()? onPressed,
}) {
  return GestureDetector(
    onTap: onPressed,
    child: Text(
      text ?? "نسيت كلمة المرور؟",
      style: Theme.of(Get.context!)
          .textTheme
          .headlineSmall!
          .copyWith(fontSize: 13.sp, fontStyle: FontStyle.italic),
    ),
  );
}

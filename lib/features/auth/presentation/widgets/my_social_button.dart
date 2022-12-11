import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thrhaly/core/const/app_colors.dart';

MySocialButton({
  required String iconAsset,
  required void Function()? onPressed,
}) {
  return Material(
    child: InkWell(
      onTap: () {},
      child: Container(
        width: 35.w,
        height: 35.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(
            color: Color(
              AppColors.KColorBlue,
            ),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            7.0,
          ),
          child: SvgPicture.asset(iconAsset),
        ),
      ),
    ),
  );
}

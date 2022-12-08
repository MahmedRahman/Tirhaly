import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const/app_colors.dart';
import 'package:thrhaly/core/extensions/fontWeight_ex.dart';

Widget LoginButton({
  required void Function()? onPressed,
  required Color ButtonBackGroundColor,
  required String title,
  String? tag,
}) =>
    tag == null
        ? Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.65.r),
            ),
            color: ButtonBackGroundColor,
            clipBehavior: Clip.antiAlias,
            child: MaterialButton(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: onPressed,
              minWidth: Get.width,
              height: 31.97.h,
              child: Text(
                title,
                style: Theme.of(Get.context!).textTheme.headlineMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 15.sp,
                    ),
              ),
            ),
          )
        : Hero(
            tag: tag,
            child: Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.65.r),
              ),
              color: ButtonBackGroundColor,
              clipBehavior: Clip.antiAlias,
              child: MaterialButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: onPressed,
                minWidth: Get.width,
                height: 31.97.h,
                child: Text(
                  title,
                  style: Theme.of(Get.context!).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 15.sp,
                      ),
                ),
              ),
            ),
          );

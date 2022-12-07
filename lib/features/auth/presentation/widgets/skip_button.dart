import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/fontWeight_ex.dart';
import 'package:thrhaly/core/spacer.dart';

Widget SkipButton({
  void Function()? onTap,
}) =>
    MaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            "assets/svg/skip.svg",
          ),
          SpacerW5(),
          Text(
            "skip".tr,
            style: Theme.of(Get.context!).textTheme.headlineMedium,
          )
        ],
      ),
    );

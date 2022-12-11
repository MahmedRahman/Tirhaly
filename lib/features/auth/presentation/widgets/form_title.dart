import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const/app_colors.dart';
import 'package:thrhaly/core/spacer.dart';

FormTitle({
  required String firstText,
  required String scandText,
}) =>
    Row(
      children: [
        Text(
          firstText,
          style: Theme.of(Get.context!).textTheme.headlineMedium!.copyWith(
                color: Color(
                  AppColors.KColorGreen,
                ),
              ),
        ),
        SpacerW5(),
        Text(
          scandText,
          style: Theme.of(Get.context!).textTheme.headlineMedium!.copyWith(
                color: Color(
                  AppColors.KColorBlack,
                ),
              ),
        )
      ],
    );

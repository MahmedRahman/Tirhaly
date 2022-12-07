import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const.dart';
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
                  AppConst.KColorGreen,
                ),
              ),
        ),
        SpacerW5(),
        Text(
          scandText,
          style: Theme.of(Get.context!).textTheme.headlineMedium!.copyWith(
                color: Color(
                  AppConst.KColorBlack,
                ),
              ),
        )
      ],
    );


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thrhaly/core/const.dart';

MySocialButton({
  required String iconAsset,
  required void Function()? onPressed,
}) {
  return Material(
    child: MaterialButton(
      minWidth: 35,
      height: 35,
      onPressed: () {},
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(
              AppConst.KColorBlue,
            ),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            8.0,
          ),
          child: SvgPicture.asset(iconAsset),
        ),
      ),
    ),
  );
}
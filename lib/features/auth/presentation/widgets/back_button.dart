import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thrhaly/core/spacer.dart';
import 'dart:math' as math; // import this

Widget backButton({required void Function()? onPressed}) {
  return MaterialButton(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    onPressed: onPressed,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "رجوع",
          style: TextStyle(
            fontSize: 19,
            height: 1,
            fontWeight: FontWeight.w500,
          ),
        ),
        SpacerW5(),
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(math.pi),
          child: SvgPicture.asset(
            "assets/svg/skip.svg",
          ),
        ),
      ],
    ),
  );
}

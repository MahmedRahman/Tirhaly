
import 'package:flutter/material.dart';
import 'package:thrhaly/core/const.dart';

MyTwoTextButton({
  required void Function()? onPressed,
  required String firstText,
  required String scandText,
}) {
  return MaterialButton(
    onPressed: onPressed,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: Color(AppConst.KColorBlue),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          scandText,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Color(AppConst.KColorGreen),
          ),
        ),
      ],
    ),
  );
}



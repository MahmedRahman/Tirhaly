import 'package:flutter/material.dart';

MyTextButton({
  required String? text,
  required void Function()? onPressed,
}) {
  return MaterialButton(
    onPressed: onPressed,
    child: Text(
      "نسيت كلمة المرور؟",
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w300,
        color: Color(0xff8D8D8D),
      ),
    ),
  );
}

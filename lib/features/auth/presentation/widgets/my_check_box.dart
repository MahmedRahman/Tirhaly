import 'package:flutter/material.dart';
import 'package:get/get.dart';

MyCheckbox({
  required String title,
}) {
  RxBool flg = true.obs;
  return MaterialButton(
    padding: EdgeInsets.all(0),
    minWidth: 0,
    onPressed: () {
      flg.value = !flg.value;
    },
    child: Row(
      children: [
        Obx(() {
          return SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(
              activeColor: Color(0xff8D8D8D),
              value: flg.value,
              onChanged: (val) {},
            ),
          );
        }),
        SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: Color(0xff8D8D8D),
          ),
        ),
      ],
    ),
  );
}
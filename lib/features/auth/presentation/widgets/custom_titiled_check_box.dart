import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:thrhaly/core/const.dart';

class CustomTitledCheckBox extends StatelessWidget {
  CustomTitledCheckBox({
    required this.onChanged,
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;
  final ValueChanged<bool>? onChanged;
  final ValueNotifier<bool> rememberMeNotifier = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ValueListenableBuilder<bool>(
          valueListenable: rememberMeNotifier,
          builder: (_, bool value, __) => InkWell(
            onTap: () {
              rememberMeNotifier.value = !rememberMeNotifier.value;

              onChanged!.call(rememberMeNotifier.value);
            },
            child: Row(
              children: [
                Container(
                  width: 13.17.w,
                  height: 13.17.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(
                          color: Color(AppConst.KColorBlack), width: 1.2)),
                  child: Visibility(
                    visible: value,
                    child: Center(
                      child: Icon(
                        Icons.check,
                        color: Color(AppConst.KColorBlack),
                        size: 13,
                      ),
                    ),
                    replacement: SizedBox(),
                  ),
                ),
                SizedBox(width: 7.w),
                if (title != null)
                  Text(
                    title!,
                    style: Theme.of(Get.context!)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 13.sp),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
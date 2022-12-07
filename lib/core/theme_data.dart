import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thrhaly/core/fontWeight_ex.dart';

ThemeData mythemeData() => ThemeData(
      fontFamily: 'GE SS',
      scaffoldBackgroundColor: Color(0xffFFFFFF),
      textTheme: TextTheme(
        headlineSmall: TextStyle(
          fontSize: 13.sp,
          height: 1.h,
          fontWeight: FontWeightEx.light,
        ),
        headlineMedium: TextStyle(
          fontSize: 20.sp,
          height: 1.h,
          fontWeight: FontWeightEx.medium,
        ),
        headlineLarge: TextStyle(
          fontSize: 19.sp,
          height: 1.h,
          fontWeight: FontWeightEx.bold,
        ),
      ),
    );

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thrhaly/core/routes/app_routes_management.dart';
import 'package:thrhaly/core/theme_data.dart';
import 'package:thrhaly/core/translations/app_translations.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          textDirection: TextDirection.rtl,
          title: "Tirhaly",
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (settings) {
            return RouteGenerator.generateRoute(settings);
          },
          translations: AppTranslation(),
          locale: Locale('ar_EG'),
          theme: mythemeData(),
        );
      },
    ),
  );
}

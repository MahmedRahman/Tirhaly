import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:thrhaly/features/auth/presentation/pages/login_view.dart';
import 'package:thrhaly/features/auth/presentation/widgets/skip_button.dart';
import 'package:thrhaly/core/const.dart';
import 'package:thrhaly/features/auth/presentation/pages/sign_in_view.dart';

class HomeView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Get.to(
              () => LoginView(),
            );
          },
          child: Text("LogOut"),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrhaly/features/auth/presentation/widgets/back_button.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_logo.dart';

class BaseAuthPage extends GetView {
  const BaseAuthPage(
      {Key? key, required this.child, this.withBackButton = false})
      : super(key: key);

  final Widget child;
  final bool? withBackButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 47),
                    child: child),
                Expanded(
                  child: MyLogo(),
                )
              ],
            ),
          ),
          Visibility(
            visible: withBackButton!,
            child: Padding(
              padding: EdgeInsets.only(top: AppBar().preferredSize.height),
              child: backButton(
                onPressed: () {
                  Get.back();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_logo.dart';

class BaseAuthPage extends GetView {
  const BaseAuthPage({Key? key, required this.child, this.appBar})
      : super(key: key);

  final Widget child;
  final PreferredSizeWidget? appBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
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
    );
  }
}

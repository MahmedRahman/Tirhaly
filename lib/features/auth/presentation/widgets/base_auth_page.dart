import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrhaly/features/auth/presentation/widgets/my_logo.dart';

class BaseAuthPage extends GetView {
  const BaseAuthPage({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

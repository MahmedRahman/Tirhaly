import 'package:flutter/cupertino.dart';
import 'package:thrhaly/features/auth/presentation/pages/restPassword/forget_password_view.dart';

abstract class RouteGenerator {
  static const home = '/';
  static const ForgetPassword = '/ForgetPasswordView';
  const RouteGenerator._();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ForgetPassword:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => ForgetPasswordView(),
        );
      default:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => Container(
            child: Text(
              "How Are You This Is Erorr",
            ),
          ),
        );
    }
  }
}

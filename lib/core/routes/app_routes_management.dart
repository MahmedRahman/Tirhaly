import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';
import 'package:thrhaly/features/auth/presentation/pages/login_view.dart';
import 'package:thrhaly/features/auth/presentation/pages/restPassword/forget_password_view.dart';
import 'package:thrhaly/features/auth/presentation/pages/restPassword/otp_view.dart';
import 'package:thrhaly/features/auth/presentation/pages/restPassword/rest_passeord_view.dart';
import 'package:thrhaly/features/auth/presentation/pages/sigin_up_view.dart';
import 'package:thrhaly/features/auth/presentation/pages/sign_in_view.dart';
import 'package:thrhaly/features/home/presentation/pages/home_view.dart';
import 'package:thrhaly/features/onboard/presentation/pages/onboard_first_view.dart';
import 'package:thrhaly/features/onboard/presentation/pages/onborad_second_view.dart';
import 'package:thrhaly/features/onboard/presentation/pages/splash_view.dart';

abstract class RouteGenerator {
  static const entryPoint = '/';

//ForgetPassword
  static const ForgetPassword = '/ForgetPasswordView';
  static const otp = '/OtpView';
  static const ResetPassword = '/ResetPasswordView';
//onBorad
  static const Splash = '/SplashView';
  static const OnboardFirst = '/OnboardFirstView';
  static const OnboardSecond = '/OnboardSecondView';
//Auth
  static const login = '/LoginView';
  static const SignIn = '/SignInView';
  static const SignUp = '/SignUpView';
//Home
  static const home = '/HomeView';

  const RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case entryPoint:
      case Splash:
        return PageTransition(
          child: SplashView(),
          curve: Curves.easeInOut,
          type: PageTransitionType.rightToLeft,
          duration: Duration(
            milliseconds: (0.5 * 1000).round(),
          ),
        );

      case OnboardFirst:
        return PageTransition(
          child: OnboardFirstView(),
          curve: Curves.easeInOut,
          type: PageTransitionType.rightToLeft,
          duration: Duration(
            milliseconds: (0.5 * 1000).round(),
          ),
        );

      case OnboardSecond:
        return PageTransition(
          child: OnboardSecondView(),
          curve: Curves.easeInOut,
          type: PageTransitionType.rightToLeft,
          duration: Duration(
            milliseconds: (0.5 * 1000).round(),
          ),
        );

      case login:
        return PageTransition(
          child: LoginView(),
          curve: Curves.easeInOut,
          type: PageTransitionType.rightToLeft,
          duration: Duration(
            milliseconds: (0.5 * 1000).round(),
          ),
        );

      case SignIn:
        return PageTransition(
          child: SignInView(),
          curve: Curves.easeInOut,
          type: PageTransitionType.fade,
          duration: Duration(
            milliseconds: (0.5 * 1000).round(),
          ),
        );

      case SignUp:
        return PageTransition(
          child: SignUpView(),
          curve: Curves.easeInOut,
          type: PageTransitionType.fade,
          duration: Duration(
            milliseconds: (0.5 * 1000).round(),
          ),
        );

      case ForgetPassword:
        return PageTransition(
          child: ForgetPasswordView(),
          curve: Curves.easeInOut,
          type: PageTransitionType.fade,
          duration: Duration(
            milliseconds: (0.5 * 1000).round(),
          ),
        );

      case otp:
        return PageTransition(
          child: OtpView(),
          curve: Curves.easeInOut,
          type: PageTransitionType.fade,
          duration: Duration(
            milliseconds: (0.5 * 1000).round(),
          ),
        );

      case ResetPassword:
        return PageTransition(
          child: ResetPasswordView(),
          curve: Curves.easeInOut,
          type: PageTransitionType.fade,
          duration: Duration(
            milliseconds: (0.5 * 1000).round(),
          ),
        );

      case home:
        return PageTransition(
          child: HomeView(),
          curve: Curves.easeInOut,
          type: PageTransitionType.fade,
          duration: Duration(
            milliseconds: (0.5 * 1000).round(),
          ),
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

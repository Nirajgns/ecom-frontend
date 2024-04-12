import 'package:ecom_app/presentation/screens/auth/login_screen.dart';
import 'package:ecom_app/presentation/screens/auth/signup_screen.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.routeName:
        return CupertinoPageRoute(builder: (context) => LoginScreen());

      case SignupScreen.routeName:
        return CupertinoPageRoute(builder: (context) => const SignupScreen());

      default:
        return null;
    }
  }
}

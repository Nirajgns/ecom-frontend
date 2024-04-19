import 'package:ecom_app/presentation/screens/auth/login_screen.dart';
import 'package:ecom_app/presentation/screens/auth/providers/login_provider.dart';
import 'package:ecom_app/presentation/screens/auth/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.routeName:
        return CupertinoPageRoute(
          builder: (context) => ChangeNotifierProvider(
            child: const LoginScreen(),
            create: (context) => LoginProvider(context),
          ),
        );

      case SignupScreen.routeName:
        return CupertinoPageRoute(builder: (context) => const SignupScreen());

      default:
        return null;
    }
  }
}

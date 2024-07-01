import 'package:ecom_app/data/model/product/product_model.dart';
import 'package:ecom_app/presentation/screens/auth/login_screen.dart';
import 'package:ecom_app/presentation/screens/auth/providers/login_provider.dart';
import 'package:ecom_app/presentation/screens/auth/providers/signup_provider.dart';
import 'package:ecom_app/presentation/screens/auth/signup_screen.dart';
import 'package:ecom_app/presentation/screens/home/home_screen.dart';
import 'package:ecom_app/presentation/screens/product/product_details_screen.dart';
import 'package:ecom_app/presentation/screens/splash/splash_screen.dart';
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
        return CupertinoPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (context) => SignupProvider(context),
            child: const SignupScreen(),
          ),
        );

      case HomeScreen.routeName:
        return CupertinoPageRoute(builder: (context) => const HomeScreen());

      case SplashScreen.routeName:
        return CupertinoPageRoute(builder: (context) => const SplashScreen());

      case ProductDetailsScreen.routeName:
        return CupertinoPageRoute(
            builder: (context) => ProductDetailsScreen(
                  productModel: settings.arguments as ProductModel,
                ));

      default:
        return null;
    }
  }
}

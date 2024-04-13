import 'package:ecom_app/core/routes.dart';
import 'package:ecom_app/core/ui.dart';
import 'package:ecom_app/presentation/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const EcomerceApp());
}

class EcomerceApp extends StatelessWidget {
  const EcomerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.defaultTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: LoginScreen.routeName,
    );
  }
}

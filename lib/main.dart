import 'package:ecom_app/core/routes.dart';
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
    return const MaterialApp(
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: LoginScreen.routeName,
    );
  }
}

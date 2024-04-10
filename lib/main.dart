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
      title: "Ecommerce App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ecommerce App"),
        ),
      ),
    );
  }
}

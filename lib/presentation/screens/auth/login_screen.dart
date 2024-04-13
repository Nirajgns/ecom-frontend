import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String routeName = "login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("Ecommerce App"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(children: [
            const Text(
              "Log In",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: "Enter your email...",
                label: Text("Email"),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: "Enter your password...",
                label: Text("Password"),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            CupertinoButton(
              color: Colors.blue,
              onPressed: () => {},
              child: const Text("Login"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () => {},
                  child: const Text("Sign up..."),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

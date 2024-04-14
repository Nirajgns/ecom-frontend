import 'package:ecom_app/core/ui.dart';
import 'package:ecom_app/presentation/widgets/gap_widget.dart';
import 'package:ecom_app/presentation/widgets/link_button.dart';
import 'package:ecom_app/presentation/widgets/primary_button.dart';
import 'package:ecom_app/presentation/widgets/primary_textfield.dart';
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
            Text("Log In", style: TextStyles.heading2),
            GapWidget(),
            PrimaryTextField(
              labelText: "Email Address",
              controller: emailController,
              hintText: "Enter your Email...",
            ),
            GapWidget(),
            PrimaryTextField(
              labelText: "Password",
              controller: passwordController,
              hintText: "Enter your Password...",
              obscureText: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                LinkButton(
                  text: "Forgot password?",
                  onPressed: () {},
                ),
              ],
            ),
            GapWidget(),
            PrimaryButton(
              text: "Log In",
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                LinkButton(
                  text: "Sign Up",
                  onPressed: () {},
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

import 'package:ecom_app/core/ui.dart';
import 'package:ecom_app/presentation/screens/auth/providers/login_provider.dart';
import 'package:ecom_app/presentation/widgets/gap_widget.dart';
import 'package:ecom_app/presentation/widgets/link_button.dart';
import 'package:ecom_app/presentation/widgets/primary_button.dart';
import 'package:ecom_app/presentation/widgets/primary_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String routeName = "login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LoginProvider>(context);

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
            const GapWidget(
              size: -10,
            ),
            (provider.error != "")
                ? Text(provider.error,
                    style: const TextStyle(color: Colors.red))
                : const SizedBox(),
            const GapWidget(size: 5),
            PrimaryTextField(
              labelText: "Email Address",
              controller: provider.emailController,
              hintText: "Enter your Email...",
            ),
            const GapWidget(),
            PrimaryTextField(
              labelText: "Password",
              controller: provider.passwordController,
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
            const GapWidget(),
            PrimaryButton(
              text: (provider.isLoading) ? "..." : "Log In",
              onPressed: provider.logIn,
            ),
            const GapWidget(),
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

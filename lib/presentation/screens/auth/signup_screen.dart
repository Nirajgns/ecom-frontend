import 'package:ecom_app/core/ui.dart';
import 'package:ecom_app/presentation/screens/auth/providers/signup_provider.dart';
import 'package:ecom_app/presentation/widgets/gap_widget.dart';
import 'package:ecom_app/presentation/widgets/link_button.dart';
import 'package:ecom_app/presentation/widgets/primary_button.dart';
import 'package:ecom_app/presentation/widgets/primary_textfield.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  static const String routeName = "signup";

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SignupProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("Ecommerce App"),
      ),
      body: SafeArea(
        child: Form(
          key: provider.formkey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(children: [
              Text("Create Account", style: TextStyles.heading2),
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
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Email address is required!";
                  }
                  if (!EmailValidator.validate(value.trim())) {
                    return "Invalid email address!";
                  }
                  return null;
                },
              ),
              const GapWidget(),
              PrimaryTextField(
                  labelText: "Password",
                  hintText: "Enter your Password...",
                  obscureText: true,
                  controller: provider.passwordController,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Password is required!";
                    }
                    return null;
                  }),
              const GapWidget(),
              PrimaryTextField(
                  labelText: "Confirm Password",
                  hintText: "Enter your Password again...",
                  obscureText: true,
                  controller: provider.cPasswordController,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return " Confirmation password is required!";
                    }
                    if (value.trim() !=
                        provider.passwordController.text.trim()) {
                      return "Passwords do not match!";
                    }
                    return null;
                  }),
              const GapWidget(),
              PrimaryButton(
                text: (provider.isLoading) ? "..." : "Create account",
                onPressed: provider.createAccount,
              ),
              const GapWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  LinkButton(
                    text: "Sign In",
                    onPressed: () {},
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

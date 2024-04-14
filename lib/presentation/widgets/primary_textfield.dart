import "package:flutter/material.dart";

class PrimaryTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final String? hintText;
  final bool obscureText;

  const PrimaryTextField({
    super.key,
    required this.labelText,
    this.controller,
    this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        labelText: labelText,
        hintText: hintText,
      ),
      obscureText: obscureText,
    );
  }
}
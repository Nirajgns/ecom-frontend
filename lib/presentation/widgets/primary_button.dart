import "package:ecom_app/core/ui.dart";
import "package:flutter/cupertino.dart";

class PrimaryButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final Color? color;

  const PrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CupertinoButton(
        color: AppColors.accent,
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}

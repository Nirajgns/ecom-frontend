import "package:flutter/cupertino.dart";

class LinkButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;

  const LinkButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

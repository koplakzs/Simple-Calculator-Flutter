import 'package:calculator/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
      required this.onPressed,
      this.backgroundColor,
      this.textColor,
      this.text})
      : super(key: key);

  final void Function(String) onPressed;
  final String? text;
  final Color? backgroundColor, textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(text.toString()),
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(18),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: backgroundColor,
          shadowColor: AppColor.buttonEqual),
      child: Text(
        text.toString(),
        textAlign: TextAlign.center,
        style: TextStyle(color: textColor, fontSize: 23),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculator/ui/theme/theme.dart';

class Display extends StatefulWidget {
  const Display({Key? key, required this.input, required this.output})
      : super(key: key);

  final String input, output;
  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          padding: const EdgeInsets.all(20),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: AutoSizeText(
                  widget.input,
                  textAlign: TextAlign.end,
                  style: const TextStyle(color: AppColor.textColorPrimaryGrey),
                  maxLines: 1,
                  minFontSize: 30,
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: AutoSizeText(
                  widget.output,
                  textAlign: TextAlign.end,
                  style: const TextStyle(color: AppColor.textColorSecondWhite),
                  maxLines: 1,
                  minFontSize: 45,
                ),
              )
            ],
          ),
        ));
  }
}

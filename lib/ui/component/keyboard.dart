import 'package:flutter/widgets.dart';
import 'package:calculator/ui/component/button.dart';
import 'package:calculator/ui/theme/theme.dart';

class Keyboard extends StatefulWidget {
  const Keyboard({Key? key, required this.onPressed}) : super(key: key);

  final void Function(String) onPressed;
  @override
  State<Keyboard> createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.buttonColorSecondary,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonWidget(
                onPressed: widget.onPressed,
                text: "C",
                textColor: AppColor.textColorClear,
                backgroundColor: AppColor.buttonColorSecondary,
              ),
              ButtonWidget(
                onPressed: widget.onPressed,
                text: "%",
                textColor: AppColor.textColorPrimaryBlue,
                backgroundColor: AppColor.buttonColorSecondary,
              ),
              ButtonWidget(
                onPressed: widget.onPressed,
                text: 'DEL',
                textColor: AppColor.textColorPrimaryBlue,
                backgroundColor: AppColor.buttonColorSecondary,
              ),
              ButtonWidget(
                onPressed: widget.onPressed,
                text: "/",
                textColor: AppColor.textColorPrimaryBlue,
                backgroundColor: AppColor.buttonColorSecondary,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonWidget(
                onPressed: widget.onPressed,
                text: "7",
                textColor: AppColor.textColorSecondWhite,
                backgroundColor: AppColor.buttonColorSecondary,
              ),
              ButtonWidget(
                onPressed: widget.onPressed,
                text: "8",
                textColor: AppColor.textColorSecondWhite,
                backgroundColor: AppColor.buttonColorSecondary,
              ),
              ButtonWidget(
                onPressed: widget.onPressed,
                text: '9',
                textColor: AppColor.textColorSecondWhite,
                backgroundColor: AppColor.buttonColorSecondary,
              ),
              ButtonWidget(
                onPressed: widget.onPressed,
                text: "x",
                textColor: AppColor.textColorPrimaryBlue,
                backgroundColor: AppColor.buttonColorSecondary,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonWidget(
                onPressed: widget.onPressed,
                text: "4",
                textColor: AppColor.textColorSecondWhite,
                backgroundColor: AppColor.buttonColorSecondary,
              ),
              ButtonWidget(
                onPressed: widget.onPressed,
                text: "5",
                textColor: AppColor.textColorSecondWhite,
                backgroundColor: AppColor.buttonColorSecondary,
              ),
              ButtonWidget(
                onPressed: widget.onPressed,
                text: '6',
                textColor: AppColor.textColorSecondWhite,
                backgroundColor: AppColor.buttonColorSecondary,
              ),
              ButtonWidget(
                onPressed: widget.onPressed,
                text: "-",
                textColor: AppColor.textColorPrimaryBlue,
                backgroundColor: AppColor.buttonColorSecondary,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonWidget(
                onPressed: widget.onPressed,
                text: "1",
                textColor: AppColor.textColorSecondWhite,
                backgroundColor: AppColor.buttonColorSecondary,
              ),
              ButtonWidget(
                onPressed: widget.onPressed,
                text: "2",
                textColor: AppColor.textColorSecondWhite,
                backgroundColor: AppColor.buttonColorSecondary,
              ),
              ButtonWidget(
                onPressed: widget.onPressed,
                text: '3',
                textColor: AppColor.textColorSecondWhite,
                backgroundColor: AppColor.buttonColorSecondary,
              ),
              ButtonWidget(
                onPressed: widget.onPressed,
                text: "+",
                textColor: AppColor.textColorPrimaryBlue,
                backgroundColor: AppColor.buttonColorSecondary,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonWidget(
                onPressed: widget.onPressed,
                text: "00",
                textColor: AppColor.textColorSecondWhite,
                backgroundColor: AppColor.buttonColorSecondary,
              ),
              ButtonWidget(
                onPressed: widget.onPressed,
                text: "0",
                textColor: AppColor.textColorSecondWhite,
                backgroundColor: AppColor.buttonColorSecondary,
              ),
              ButtonWidget(
                onPressed: widget.onPressed,
                text: '.',
                textColor: AppColor.textColorSecondWhite,
                backgroundColor: AppColor.buttonColorSecondary,
              ),
              ButtonWidget(
                onPressed: widget.onPressed,
                text: "=",
                textColor: AppColor.textColorSecondWhite,
                backgroundColor: AppColor.buttonEqual,
              )
            ],
          )
        ],
      ),
    );
  }
}

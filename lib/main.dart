import 'package:calculator/core/operation.dart';
import 'package:calculator/ui/component/display.dart';
import 'package:flutter/material.dart';
import 'package:calculator/ui/theme/theme.dart';
import 'package:calculator/ui/component/keyboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Operation operation = Operation();
  _onPressed(String value) {
    setState(() {
      operation.result(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: AppColor.backgroundColorSecondary,
          child: Column(
            children: [
              Display(
                input: operation.input,
                output: operation.output,
              ),
              Expanded(flex: 1, child: Keyboard(onPressed: _onPressed))
            ],
          ),
        ),
      ),
    );
  }
}

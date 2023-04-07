import 'package:math_expressions/math_expressions.dart';
import 'package:get/get.dart';

class Operation extends GetxController {
  static const operation = ['%', '/', 'X', '-', '+', '='];

  var input = "";
  var output = "0";

  void result(String value) {
    switch (value) {
      case "C":
        clearValue();
        break;
      case "DEL":
        deleteValue();
        break;
      case "=":
        equalValue();
        break;
      default:
        tapValue(value);
        break;
    }
  }

  clearValue() {
    input = "";
    output = "0";
    update();
  }

  deleteValue() {
    input = input.substring(0, input.length - 1);
    update();
  }

  equalValue() {
    String dumbInput = input;
    dumbInput = dumbInput.replaceAll("x", "*").replaceAll("%", "*0.01");
    Parser p = Parser();
    Expression exp = p.parse(dumbInput);
    ContextModel ctx = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, ctx);

    output = eval.toString();
    update();
  }

  tapValue(String value) {
    for (int i = 0; i < value.length; i++) {
      if ("%x/+-".contains(value[i])) {
        value.length - 1;
        if ("%x/+-".contains(input.substring(input.length - 1))) {
          input += "";
          update();
        } else {
          input += value;
          update();
        }
      } else {
        input += value;
        update();
      }
    }
  }
}

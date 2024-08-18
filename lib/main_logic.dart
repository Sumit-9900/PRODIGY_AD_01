import 'package:math_expressions/math_expressions.dart';

class MainLogic {
  String input = '';
  String output = '';

  void onButtonClick(value) {
    if (value == "AC") {
      input = '';
      output = '';
    } else if (value == '<') {
      if (input.isNotEmpty) {
        input = input.substring(0, input.length - 1);
      }
    } else if (value == '=') {
      if (input.isNotEmpty) {
        String userInput = input;
        userInput = input.replaceAll('x', '*');
        Parser p = Parser();
        Expression exp = p.parse(userInput);
        ContextModel cm = ContextModel();
        var finalvalue = exp.evaluate(EvaluationType.REAL, cm);
        output = finalvalue.toString();
        if (output.endsWith('.0')) {
          output = output.substring(0, output.length - 2);
        }
      }
    } else {
      input = input + value;
    }
  }
}

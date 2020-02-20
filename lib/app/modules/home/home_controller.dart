import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  @observable
  double number1;

  @observable
  double number2;

  // start
  @observable
  String displayResult = "0";

  @observable
  String op;

  @observable
  double result;

  bool negativeNumber = false;

  printForDebug() {
    print("-------------------\n" +
        "displayResult $displayResult\n" +
        "negativeNumber $negativeNumber\n" +
        "number1 $number1\n" +
        "op $op\n" +
        "number2 $number2\n" +
        "result $result\n" +
        "-------------------\n");
  }

  checkIfDoubleConvertToString(double number) {
    List splitedNumber = number.toString().split('.');
    if (splitedNumber[1] == '0') {
      return splitedNumber[0];
    } else {
      return number;
    }
  }

  @action
  clearAll() {
    displayResult = "0";
    negativeNumber = false;
    number1 = null;
    number2 = null;
    op = null;
    printForDebug();
  }

  @action
  setNumber(double newNumber) {
    if (number1 == null && op == null) {
      if (negativeNumber) {
        displayResult =
            "-" + checkIfDoubleConvertToString(newNumber).toString();
        number1 = double.parse(displayResult);
      } else {
        displayResult = checkIfDoubleConvertToString(newNumber).toString();
        number1 = double.parse(displayResult);
      }
      printForDebug();
    } else if (number2 == null && number1 != null && op != null) {
      if (negativeNumber) {
        displayResult =
            "-" + checkIfDoubleConvertToString(newNumber).toString();
        number2 = double.parse(displayResult);
      } else {
        displayResult = checkIfDoubleConvertToString(newNumber).toString();
        number2 = double.parse(displayResult);
      }
      printForDebug();
    } else if (number1 != null && op == null) {
      displayResult += checkIfDoubleConvertToString(newNumber).toString();
      number1 = double.parse(displayResult);
      printForDebug();
    } else if (number2 != null && op != null) {
      displayResult += checkIfDoubleConvertToString(newNumber).toString();
      number2 = double.parse(displayResult);
      printForDebug();
    }
  }

  @action
  setOp(String newOp) {
    // setando o number1 como negativo
    if (number1 == null && number2 == null && newOp == "-" && op == null) {
      displayResult = "-";
      negativeNumber = true;
    }
    // setando o number2 como negativo
    else if (number1 != null &&
        number2 == null &&
        newOp == "-" &&
        op != null &&
        op != "+" &&
        op != "-") {
      displayResult = "-";
      negativeNumber = true;
    }
    // setando as operações
    else if (number1 != null && number2 == null) {
      op = newOp;
      negativeNumber = false;
    }
    printForDebug();
  }

  @action
  calculate() {
    switch (op) {
      case "+":
        result = number1 + number2;
        displayResult = checkIfDoubleConvertToString(result).toString();
        number1 = result;
        number2 = null;
        op = null;
        result = null;
        printForDebug();
        break;
      case "-":
        result = number1 - number2;
        displayResult = checkIfDoubleConvertToString(result).toString();
        number1 = result;
        number2 = null;
        op = null;
        result = null;
        printForDebug();
        break;
      case "*":
        result = number1 * number2;
        displayResult = checkIfDoubleConvertToString(result).toString();
        number1 = result;
        number2 = null;
        op = null;
        result = null;
        printForDebug();
        break;
      case "/":
        result = number1 / number2;
        displayResult = checkIfDoubleConvertToString(result).toString();
        number1 = result;
        number2 = null;
        op = null;
        result = null;
        printForDebug();
        break;
      default:
    }
  }
}

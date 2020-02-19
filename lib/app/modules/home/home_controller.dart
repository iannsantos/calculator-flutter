import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  @observable
  double result = 0;
  String _n1;
  String _n2;

  @observable
  String showResult = "0";

  @observable
  String op;

  @action
  void setResult(double newNumber) {
    result = newNumber;
    print("result $result");
  }

  @action
  setNumber(double number) {
    if (_n1 == null) {
      _n1 = number.toString();
    } else if (op == null) {
      _n1 += number.toString();
    } else if (_n2 == null) {
      _n2 = number.toString();
    } else {
      _n2 += number.toString();
    }
  }

  @action
  void setOperator(String newOp) {
    op = newOp;
    print("op $op");
  }

  @action
  void calculate() {
    switch (op) {
      case "+":
        result = double.parse(_n1) + double.parse(_n2);
        convertDoubleToString(result);
        _n1 = result.toString();
        op = null;
        break;
      default:
    }
  }

  @action
  void convertDoubleToString(double number) {
    List splitedNumber = number.toString().split('.');
    if (splitedNumber[1] == '0') {
      showResult = splitedNumber[0].toString();
    } else {
      showResult = number.toString();
    }
  }
}

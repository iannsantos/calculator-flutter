import 'package:calculator/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ButtonOperatorWidget extends StatelessWidget {
  final String op;

  const ButtonOperatorWidget({Key key, this.op}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = Modular.get();

    return Container(
      width: MediaQuery.of(context).size.width * 20 / 100,
      height: MediaQuery.of(context).size.width * 20 / 100,
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 2.5 / 100),
      child: RaisedButton(
        onPressed: () {
          if (op == "C") {
            controller.clearAll();
          } else if (op == "=") {
            controller.calculate();
          } else if (op == ".") {
          } else {
            controller.setOp(op);
          }
        },
        color: Color.fromRGBO(42, 50, 113, 0.28),
        splashColor: Color.fromRGBO(42, 50, 113, 0.80),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          op,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 6 / 100,
            color: Color(0xff6cacc5),
          ),
        ),
      ),
    );
  }
}

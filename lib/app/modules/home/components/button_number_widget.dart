import 'package:calculator/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ButtonNumberWidget extends StatelessWidget {
  final int number;

  const ButtonNumberWidget({Key key, this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = Modular.get();

    return Container(
      width: 75,
      height: 75,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        onPressed: () {
          controller.setNumber(number.toDouble());
        },
        color: Color.fromRGBO(42, 50, 113, 0.28),
        splashColor: Color.fromRGBO(42, 50, 113, 0.80),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          number.toString(),
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff6cacc5),
          ),
        ),
      ),
    );
  }
}

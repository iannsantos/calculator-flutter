import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  double result = 0;

  String showResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    controller.clearAll();
                  },
                  child: Text(
                    "C",
                  ),
                ),
                Observer(
                  builder: (_) {
                    return Text(
                      controller.displayResult,
                    );
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    controller.setNumber(7);
                  },
                  child: Text(
                    "7",
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    controller.setNumber(8);
                  },
                  child: Text(
                    "8",
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    controller.setNumber(9);
                  },
                  child: Text(
                    "9",
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    controller.setOp("+");
                  },
                  child: Text(
                    "+",
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    controller.setNumber(4);
                  },
                  child: Text(
                    "4",
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    controller.setNumber(5);
                  },
                  child: Text(
                    "5",
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    controller.setNumber(6);
                  },
                  child: Text(
                    "6",
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    controller.setOp("-");
                  },
                  child: Text(
                    "-",
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    controller.setNumber(1);
                  },
                  child: Text(
                    "1",
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    controller.setNumber(2);
                  },
                  child: Text(
                    "2",
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    controller.setNumber(3);
                  },
                  child: Text(
                    "3",
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    controller.setOp("*");
                  },
                  child: Text(
                    "*",
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    controller.setNumber(0);
                  },
                  child: Text(
                    "0",
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    ".",
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    controller.calculate();
                  },
                  child: Text(
                    "=",
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    controller.setOp("/");
                  },
                  child: Text(
                    "/",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

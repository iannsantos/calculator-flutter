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
                    controller.setResult(0);
                    controller.convertDoubleToString(0);
                    controller.setNumber(null);
                  },
                  child: Text(
                    "C",
                  ),
                ),
                Observer(
                  builder: (_) {
                    return Text(
                      controller.showResult,
                    );
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    controller.convertDoubleToString(7.0);
                    controller.setNumber(7.0);
                  },
                  child: Text(
                    "7",
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    controller.convertDoubleToString(8.0);
                    controller.setNumber(8.0);
                  },
                  child: Text(
                    "8",
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "9",
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    controller.setOperator("+");
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
                  onPressed: () {},
                  child: Text(
                    "4",
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "5",
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "6",
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "-",
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "1",
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "2",
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "3",
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "*",
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
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
                  onPressed: () {},
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

import 'package:calculator/app/modules/home/components/button_number_widget.dart';
import 'package:calculator/app/modules/home/components/button_operator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  double result = 0;

  String showResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff20032B),
              Color(0xff68048C),
              Color(0xff58002B),
            ],
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Observer(
                    builder: (_) {
                      return Text(
                        controller.displayResult,
                        style: TextStyle(
                          color: Color(0xffc97874),
                          fontSize: 44,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                ButtonOperatorWidget(
                  op: "C",
                ),
              ],
            ),
            Row(
              children: <Widget>[
                ButtonNumberWidget(
                  number: 7,
                ),
                ButtonNumberWidget(
                  number: 8,
                ),
                ButtonNumberWidget(
                  number: 9,
                ),
                ButtonOperatorWidget(
                  op: "+",
                )
              ],
            ),
            Row(
              children: <Widget>[
                ButtonNumberWidget(
                  number: 4,
                ),
                ButtonNumberWidget(
                  number: 5,
                ),
                ButtonNumberWidget(
                  number: 6,
                ),
                ButtonOperatorWidget(
                  op: "-",
                )
              ],
            ),
            Row(
              children: <Widget>[
                ButtonNumberWidget(
                  number: 1,
                ),
                ButtonNumberWidget(
                  number: 2,
                ),
                ButtonNumberWidget(
                  number: 3,
                ),
                ButtonOperatorWidget(
                  op: "*",
                )
              ],
            ),
            Row(
              children: <Widget>[
                ButtonOperatorWidget(
                  op: ".",
                ),
                ButtonNumberWidget(
                  number: 0,
                ),
                ButtonOperatorWidget(
                  op: "=",
                ),
                ButtonOperatorWidget(
                  op: "/",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

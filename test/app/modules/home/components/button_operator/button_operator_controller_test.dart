import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:calculator/app/modules/home/components/button_operator/button_operator_controller.dart';
import 'package:calculator/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  ButtonOperatorController buttonoperator;

  setUp(() {
    buttonoperator = HomeModule.to.get<ButtonOperatorController>();
  });

  group('ButtonOperatorController Test', () {
    test("First Test", () {
      expect(buttonoperator, isInstanceOf<ButtonOperatorController>());
    });

    test("Set Value", () {
      expect(buttonoperator.value, equals(0));
      buttonoperator.increment();
      expect(buttonoperator.value, equals(1));
    });
  });
}

import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:calculator/app/modules/home/components/button_number/button_number_controller.dart';
import 'package:calculator/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  ButtonNumberController buttonnumber;

  setUp(() {
    buttonnumber = HomeModule.to.get<ButtonNumberController>();
  });

  group('ButtonNumberController Test', () {
    test("First Test", () {
      expect(buttonnumber, isInstanceOf<ButtonNumberController>());
    });

    test("Set Value", () {
      expect(buttonnumber.value, equals(0));
      buttonnumber.increment();
      expect(buttonnumber.value, equals(1));
    });
  });
}

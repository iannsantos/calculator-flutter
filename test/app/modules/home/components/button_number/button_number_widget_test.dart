import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:calculator/app/modules/home/components/button_number/button_number_widget.dart';

main() {
  testWidgets('ButtonNumberWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ButtonNumberWidget()));
    final textFinder = find.text('ButtonNumber');
    expect(textFinder, findsOneWidget);
  });
}

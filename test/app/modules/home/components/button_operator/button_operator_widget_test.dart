import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:calculator/app/modules/home/components/button_operator/button_operator_widget.dart';

main() {
  testWidgets('ButtonOperatorWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ButtonOperatorWidget()));
    final textFinder = find.text('ButtonOperator');
    expect(textFinder, findsOneWidget);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pizzaria/menu.dart';

void main() {
  testWidgets('Menu page lists every pizza with its price', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: MenuPage()));
    await tester.pump();

    expect(find.text('Our Menu'), findsOneWidget);
    expect(find.text('Margherita Pizza'), findsOneWidget);
    expect(find.text('\$8.99'), findsOneWidget);
    expect(find.text('Pepperoni Pizza'), findsOneWidget);
    expect(find.text('BBQ Chicken Pizza'), findsOneWidget);
    expect(find.text('Veggie Pizza'), findsOneWidget);
  });
}

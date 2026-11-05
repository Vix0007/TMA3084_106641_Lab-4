import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pizzaria/main.dart';

void main() {
  testWidgets('Home page shows the store name, 3 buttons and social icons', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const PizzariaApp());
    await tester.pump();

    expect(find.text('Pizzaria'), findsOneWidget);
    expect(find.byType(OutlinedButton), findsNWidgets(3));
    expect(find.byIcon(Icons.close), findsOneWidget);
    expect(find.byIcon(Icons.facebook), findsOneWidget);
  });

  testWidgets('Home buttons open the Menu, About and Contact pages', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const PizzariaApp());
    await tester.pump();

    for (final page in ['Our Menu', 'About Us', 'Contact Us']) {
      await tester.tap(find.text(page));
      await tester.pumpAndSettle();
      expect(find.text(page), findsOneWidget);

      await tester.pageBack();
      await tester.pumpAndSettle();
      expect(find.text('Pizzaria'), findsOneWidget);
    }
  });
}

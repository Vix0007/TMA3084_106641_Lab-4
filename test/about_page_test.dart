import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pizzaria/about.dart';

void main() {
  testWidgets('About page introduces the store', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: AboutPage()));
    await tester.pump();

    expect(find.text('About Us'), findsOneWidget);
    expect(find.text('The Pizzaria Story'), findsOneWidget);
    expect(find.text('Fresh'), findsOneWidget);
    expect(find.text('Fast'), findsOneWidget);
    expect(find.text('Tasty'), findsOneWidget);
  });
}

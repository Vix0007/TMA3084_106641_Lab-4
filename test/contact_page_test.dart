import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tma3084_106641_lab_4/contact.dart';

void main() {
  testWidgets('Contact page displays information', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: ContactPage()));

    expect(find.text('Contact Us'), findsOneWidget);
    expect(find.text('Say hello.'), findsOneWidget);
    expect(find.text('OUR LOCATION'), findsOneWidget);
    expect(find.text('PHONE NUMBER'), findsOneWidget);
    expect(find.text('EMAIL ADDRESS'), findsOneWidget);
    expect(find.text('OPENING HOURS'), findsOneWidget);
  });
}

// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:gharkhoj/main.dart';

void main() {
  testWidgets('GharKhoj welcome screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const GharKhojApp());

    // Verify that the title 'GharKhoj' is present on the welcome screen.
    expect(find.text('GharKhoj'), findsOneWidget);
    
    // Verify that the login button or person icon is there.
    expect(find.byIcon(Icons.person_outline), findsOneWidget);
  });
}

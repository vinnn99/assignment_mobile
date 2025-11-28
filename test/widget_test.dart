// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:assignment_mobile/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 1 (we changed the BLoC initial value to 1)
    expect(find.text('0'), findsNothing);
    expect(find.text('Nilai saat ini: 1'), findsOneWidget);

    // Open the addition page and add 3 to the current value
    await tester.tap(find.text('Buka Halaman Penjumlahan'));
    await tester.pumpAndSettle();

    // Enter 3 in the text field and press the add button
    await tester.enterText(find.byType(TextField), '3');
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    // The counter should now be 4 (1 + 3)
    expect(find.text('4'), findsOneWidget);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/detail_chat.dart';

void main() {
  testWidgets('sends a chat message', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Detailchat()));

    expect(find.text('bb'), findsOneWidget);
    expect(find.text('Ketik pesan'), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'Halo!');
    await tester.tap(find.byIcon(Icons.send));
    await tester.pump();

    expect(find.text('Halo!'), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);
  });
}

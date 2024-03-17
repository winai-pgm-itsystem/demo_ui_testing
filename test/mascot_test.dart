import 'package:demo_ui_testing/mascot_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lottie/lottie.dart';

void main() {
  testWidgets('MascotScreen renders correctly', (WidgetTester tester) async {
    // Render the widget
    await tester.pumpWidget(const MaterialApp(home: MascotScreen()));

    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byType(LottieBuilder), findsOneWidget);
  });
}

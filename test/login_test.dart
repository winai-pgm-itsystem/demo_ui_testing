import 'package:demo_ui_testing/dashboard_screen.dart';
import 'package:demo_ui_testing/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('LoginScreen renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginScreen()));

    expect(find.byKey(const Key('ic_admin')), findsOneWidget);
    expect(find.byKey(const Key('ic_user')), findsOneWidget);
    expect(find.byKey(const Key('btn_login')), findsOneWidget);

    await tester.tap(find.byKey(const Key('ic_admin')));
    await tester.pump();

    await tester.tap(find.byKey(const Key('btn_login')));
    await tester.pumpAndSettle();

    expect(find.byType(DashBoardScreen), findsOneWidget);
  });
}

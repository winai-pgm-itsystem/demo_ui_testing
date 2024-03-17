import 'package:demo_ui_testing/dashboard_screen.dart';
import 'package:demo_ui_testing/mascot_screen.dart';
// import 'package:demo_ui_testing/mascot_screen.dart';
import 'package:demo_ui_testing/widgets/card_text_widget.dart';
import 'package:demo_ui_testing/widgets/card_percentage_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'DashBoardScreen renders correctly with golden',
    () {
      testWidgets('User ontap activiaty ', (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(
          home: DashBoardScreen(userType: 'User'),
        ));

        await tester.tap(find.text('Activiaty'));
        await tester.pumpWidget(const MaterialApp(home: MascotScreen()));
        expect(find.byType(MascotScreen), findsOneWidget);
      });

      testWidgets('Admin ontap activiaty', (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(
          home: DashBoardScreen(userType: 'Admin'),
        ));

        await tester.tap(find.text('Activiaty'));

        await tester.pumpWidget(const MaterialApp(home: MascotScreen()));
        expect(find.byType(MascotScreen), findsOneWidget);
      });

      testWidgets('DashBoard widget elements', (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(
          home: DashBoardScreen(userType: 'Admin'),
        ));

        expect(find.byIcon(Icons.account_circle_outlined), findsOneWidget);

        expect(find.text('Admin'), findsOneWidget);

        expect(find.text('Balance'), findsOneWidget);

        expect(find.text('Activiaty'), findsOneWidget);

        expect(find.byType(CardTextWidget), findsNWidgets(3));
        expect(find.byType(CardPercentageWidget), findsNWidgets(3));
      });
    },
  );
}

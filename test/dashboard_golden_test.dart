import 'dart:io';

import 'package:demo_ui_testing/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> _loadFont(String name, String path) async {
  final file = File(path);
  final bytes = await file.readAsBytes();

  final fontLoader = FontLoader(name);
  fontLoader.addFont(Future.value(ByteData.view(bytes.buffer)));

  await fontLoader.load();
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await _loadFont(
      '.SF UI Text',
      'test/fonts/FontsFree-Net-sf-ui-text-regular-58646b56a688c.ttf',
    );
    await _loadFont(
      '.SF UI Display',
      'test/fonts/FontsFree-Net-SF-UI-Display-Regular-1.ttf',
    );
    await _loadFont(
      'MaterialIcons',
      'test/fonts/MaterialIcons-Regular.otf',
    );

    await _loadFont(
      'Roboto',
      'test/fonts/Roboto-Medium.ttf',
    );
  });

  testWidgets('DashBoard  renders widget elements pixel by pixel',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: DashBoardScreen(userType: 'Admin'),
    ));

    await tester.pumpAndSettle();

    await expectLater(find.byType(DashBoardScreen),
        matchesGoldenFile('dashboard_screen_golden_test.png'));
  });
}

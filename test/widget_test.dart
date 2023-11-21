import 'package:emprega_ribamar/views/anime/splash_sceeen.dart';
import 'package:emprega_ribamar/widgets/animated_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Verifica se a SplashScreen é mostrada primeiro',
      (WidgetTester tester) async {
    // Inicializa o app na SplashScreen
    await tester.pumpWidget(const MaterialApp(home: SplashScreen()));

    // Verifica se a SplashScreen contém o widget AnimatedLogoWidget
    expect(find.byType(AnimatedLogoWidget), findsOneWidget);
  });
}

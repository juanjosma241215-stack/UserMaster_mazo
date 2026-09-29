import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:usermaster/main.dart';

void main() {
  testWidgets('Muestra el Splash y navega al Login', (WidgetTester tester) async {
    await tester.pumpWidget(const UserMasterApp());

    // Verifica que se muestre la pantalla de Splash.
    expect(find.text('UserMaster'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // Espera a que termine el temporizador del Splash (3 segundos).
    await tester.pumpAndSettle(const Duration(seconds: 3));

    // Debe haber navegado al Login.
    expect(find.text('Bienvenido de nuevo'), findsOneWidget);
  });
}

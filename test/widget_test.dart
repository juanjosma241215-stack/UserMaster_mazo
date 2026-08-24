import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_movil/main.dart';

void main() {
  testWidgets('Carga inicial de la app y Splash screen', (WidgetTester tester) async {
    // Construye la app e inicia el frame
    await tester.pumpWidget(const MyApp());

    // Verifica que se muestre el texto de la pantalla Splash
    expect(find.text('Mi App Móvil'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // Espera a que termine el temporizador del Splash (3 segundos)
    await tester.pumpAndSettle(const Duration(seconds: 3));
  });
}


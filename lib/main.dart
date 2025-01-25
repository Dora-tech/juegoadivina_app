import 'package:flutter/material.dart';
import 'screens/bienvenida_screen.dart';

void main() {
  runApp(const AdivinaNumeroApp());
}

class AdivinaNumeroApp extends StatelessWidget {
  const AdivinaNumeroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adivina el Número', // Agregando título para la app
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Roboto', // Usa una fuente personalizada
      ),
      home: const BienvenidaScreen(),
    );
  }
}

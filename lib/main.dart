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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const PantallaBienvenida(),
    );
  }
}
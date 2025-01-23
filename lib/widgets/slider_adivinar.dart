import 'package:flutter/material.dart';

class SliderAdivinar extends StatelessWidget {
  final double valor;
  final ValueChanged<double> onChanged;

  const SliderAdivinar({required this.valor, required this.onChanged, super.key});

  @override
  Widget build(BuildContext context) {
    return Slider(
      min: 0,
      max: 100,
      value: valor,
      onChanged: onChanged,
    );
  }
}
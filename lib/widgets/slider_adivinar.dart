import 'package:flutter/material.dart';

class SliderAdivinar extends StatelessWidget {
  final double valor;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;

  const SliderAdivinar({
    required this.valor,
    required this.onChanged,
    required this.min,
    required this.max,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //Para hacer el componente mas reutilizable se puede agregar un min y max
    return Slider(
      min: min,
      max: max,
      value: valor,
      onChanged: onChanged,
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/slider_adivinar.dart';

class PantallaJuego extends StatefulWidget {
  final int numeroSecreto;

  const PantallaJuego({required this.numeroSecreto, super.key});

  @override
  _PantallaJuegoState createState() => _PantallaJuegoState();
}

class _PantallaJuegoState extends State<PantallaJuego> {
  double _valorSeleccionado = 50;
  String _mensaje = '';

  void _verificarNumero() {
    setState(() {
      if (_valorSeleccionado.toInt() == widget.numeroSecreto) {
        _mensaje = 'Adivinaste! El número era ${widget.numeroSecreto}';
      } else if (_valorSeleccionado.toInt() > widget.numeroSecreto) {
        _mensaje = 'Pista: demasiado alto';
      } else {
        _mensaje = 'Pista: demasiado bajo';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[400],
      appBar: AppBar(title: const Text('Adivina el Número')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Adivina cuál es', style: TextStyle(fontSize: 18, color: Colors.white)),
            SliderAdivinar(
              valor: _valorSeleccionado,
              onChanged: (nuevoValor) {
                setState(() {
                  _valorSeleccionado = nuevoValor;
                });
              },
            ),
            Text(
              'Creo que es: ${_valorSeleccionado.toInt()}',
              style: const TextStyle(fontSize: 22, color: Colors.white),
            ),
            ElevatedButton(
              onPressed: _verificarNumero,
              child: const Text('Adivinar'),
            ),
            if (_mensaje.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  _mensaje,
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              ),
            if (_mensaje.contains('Adivinaste'))
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Volver al inicio'),
              ),
          ],
        ),
      ),
    );
  }
}
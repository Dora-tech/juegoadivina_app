import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Importamos Lottie para la animación
import '../screens/juego_screen.dart'; // Ruta para la pantalla del juego
import '../utils/numero_random.dart'; // Ruta para generar el número aleatorio

// Por buenas practicas el nobmre de widget debe coincidir con el nombre del archivo
class BienvenidaScreen extends StatelessWidget {
  const BienvenidaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[400], // Fondo morado
      appBar: AppBar(
        title: const Text(
          'Bienvenido a tu primera aplicación',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple[700], // Color más oscuro para el AppBar
        centerTitle: true, // Centra el título en la barra de navegación
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.center, // Alinea al centro horizontalmente
          children: [
            const SizedBox(height: 50), // Ajusta el título más abajo

            // Animación Lottie desde archivo local
            Lottie.asset(
              'assets/animations/title_animation.json',
              width: 200, // Ancho de la animación
              height: 200, // Altura de la animación
              fit: BoxFit.contain, // Ajuste dentro del contenedor
              repeat: true, // Repetir la animación
              animate: true, // La animación se ejecuta automáticamente
              errorBuilder: (context, error, stackTrace) {
                return const Text(
                  'Error al cargar animación',
                  style: TextStyle(color: Colors.red, fontSize: 18),
                );
              },
            ),
            // Evita colocar espacio innecesarios
            const SizedBox(
                height: 20), // Espaciado entre la animación y el título
            const Text(
              'ADIVINA EL NÚMERO', // Título centrado
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Cursive', // Fuente específica
                letterSpacing: 2.0, // Espaciado entre letras
              ),
              textAlign: TextAlign.center, // Asegura el centrado del texto
            ),
            const SizedBox(
                height:
                    30), // Separación para los otros elementos si es necesario
            const Text(
              'Estoy pensando en un número entre 0 y 100',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Centrado de texto
            ),
            const SizedBox(height: 40), // Separación entre el texto y el botón
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.purple[700],
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        JuegoScreen(numeroSecreto: generarNumeroAleatorio()),
                  ),
                );
              },
              child: const Text(
                'Intentar Adivinar',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

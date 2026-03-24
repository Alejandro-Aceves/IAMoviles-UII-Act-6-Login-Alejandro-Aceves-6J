// lib/paginas/welcome.dart
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SafeArea para evitar que el contenido choque con el notch o la barra de estado
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0), // Margen interno para todo el contenido
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente los elementos
            children: [
              const Spacer(), // Empuja el contenido hacia el centro
              
              // 1. Título "Bienvenido"
              const Text(
                'Bienvenido',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20), // Espacio

              // 2. Subtítulo (Texto de descripción)
              const Text(
                'Explora tours extraordinarios y experiencias únicas. ¡Comienza tu aventura con nosotros!',
                textAlign: TextAlign.center, // Texto centrado
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey, // Texto en gris
                  height: 1.5, // Espaciado entre líneas
                ),
              ),
              const SizedBox(height: 40),

              // 3. Imagen de la red (Ilustración)
              // He seleccionado una imagen de marcador de posición con colores similares.
              // Puedes cambiar esta URL por la que desees.
              Expanded(
                flex: 3, // Ocupa más espacio en la pantalla
                child: Image.network(
                  'https://raw.githubusercontent.com/Alejandro-Aceves/Imagenes-Para-Flutter-Alejandro-Aceves-6J-11-FEB-2026/refs/heads/main/persona_con_telefono.png',
                  fit: BoxFit.contain, // La imagen se ajusta sin cortarse
                ),
              ),
              const Spacer(), // Más espacio flexible

              // 4. Botón "Iniciar Sesión" (Bordeado)
              OutlinedButton(
                onPressed: () {
                  // Navega a la ruta '/login'
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  'Iniciar Sesión',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 15), // Espacio entre botones

              // 5. Botón "Registrarse" (Relleno con nuestro color verde)
              ElevatedButton(
                onPressed: () {
                  // Navega a la ruta '/create'
                  Navigator.pushNamed(context, '/create');
                },
                child: const Text(
                  'Registrarse',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Spacer(), // Espacio final
            ],
          ),
        ),
      ),
    );
  }
}
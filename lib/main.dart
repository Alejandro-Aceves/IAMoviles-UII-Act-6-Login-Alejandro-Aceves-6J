// lib/main.dart
import 'package:flutter/material.dart';
import 'package:myapp/paginas/welcome.dart'; // ¡Ojo! Cambia 'tu_proyecto' por el nombre real de tu proyecto
import 'package:myapp/paginas/login.dart';   // Cambia 'tu_proyecto' aquí también
import 'package:myapp/paginas/create.dart';  // Cambia 'tu_proyecto' aquí también

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos el color verde secundario aquí para usarlo en toda la app
    const Color primaryGreen = Color(0xFF3CB67B);

    return MaterialApp(
      title: 'Tours App',
      debugShowCheckedModeBanner: false,
      
      // Configuración del tema global
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Fondo blanco para todas las pantallas
        primaryColor: primaryGreen,
        colorScheme: ColorScheme.fromSeed(seedColor: primaryGreen),
        
        // Estilo predeterminado para los botones elevados (como el azul de tu imagen)
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryGreen, // Usamos nuestro verde en lugar de azul para consistencia
            foregroundColor: Colors.white, // Texto blanco
            minimumSize: const Size(double.infinity, 50), // Botón de ancho completo y buena altura
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // Bordes muy redondeados
            ),
            elevation: 2,
          ),
        ),
        
        // Estilo predeterminado para los botones con borde (como el de login)
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.black, // Texto negro
            side: const BorderSide(color: Colors.black, width: 1), // Borde negro fino
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
      
      // Definición de Rutas
      initialRoute: '/', // La pantalla que carga primero
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),   // Asegúrate de que LoginScreen esté definida en login.dart
        '/create': (context) => const CreateScreen(), // Asegúrate de que CreateScreen esté definida en create.dart
      },
    );
  }
}
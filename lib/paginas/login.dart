import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryGreen = Color(0xFF3CB67B);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const Text(
                'Iniciar Sesión',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Ingresa a tu cuenta', 
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 30),
              
              // Campo Correo
              _buildField("Correo Electrónico", false),
              const SizedBox(height: 20),
              
              // Campo Contraseña
              _buildField("Contraseña", true),
              const SizedBox(height: 30),

              // BOTÓN INICIAR SESIÓN
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryGreen,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {
                  // Aquí puedes validar y luego navegar a la pantalla de Tours
                  // Navigator.pushNamed(context, '/tours');
                },
                child: const Text(
                  'Ingresar', 
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),

              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("¿No tienes una cuenta? "),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/create'),
                    child: const Text(
                      "Regístrate", 
                      style: TextStyle(fontWeight: FontWeight.bold, color: primaryGreen),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Image.network(
                'https://cdni.iconscout.com/illustration/premium/thumb/login-page-4437043-3702359.png',
                height: 180,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildField(String label, bool isPass) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
        const SizedBox(height: 5),
        TextField(
          obscureText: isPass,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ],
    );
  }
}
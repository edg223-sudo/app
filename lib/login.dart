import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'background.dart'; // Fondo diagonal

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 🔠 Título
                Stack(
                  children: [
                    Text(
                      "INICIO DE SESIÓN",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 3
                          ..color = Colors.white,
                      ),
                    ),
                    const Text(
                      "INICIO DE SESIÓN",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),

                // 🧾 Campos con labelText dentro
                _buildField("Nombre"),
                const SizedBox(height: 15),
                _buildField("Correo"),
                const SizedBox(height: 15),
                _buildField("Contraseña", obscure: true),
                const SizedBox(height: 15),
                _buildField("Confirmar contraseña", obscure: true),
                const SizedBox(height: 40),

                // 🔘 Botones
                CustomButton(
                  text: "Iniciar Sesión",
                  onPressed: () {
                    Navigator.pushNamed(context, '/pokedex');
                  },
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: "Volver",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildField(String label, {bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        fillColor: Colors.white,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
        ),
      ),
    );
  }
}

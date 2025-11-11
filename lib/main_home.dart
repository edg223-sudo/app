import 'package:flutter/material.dart';
import 'custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 140,
                  height: screenHeight,
                  color: Colors.red,
                ),
                SizedBox(width: 40),
                Container(
                  width: 140,
                  height: screenHeight,
                  color: Colors.black,
                ),
                SizedBox(width: 40),
                Container(
                  width: 140,
                  height: screenHeight,
                  color: Colors.white,
                ),
              ],
            ),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Text(
                      "POKEDEX",
                      style: TextStyle(
                        fontSize: 58,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 4
                          ..color = Colors.white,
                      ),
                    ),
                    Text(
                      "POKEDEX",
                      style: TextStyle(
                        fontSize: 58,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 45),

                CustomButton(
                  text: "Iniciar Sesión",
                  width: 200,
                  height: 50,
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
                SizedBox(height: 20),

                CustomButton(
                  text: "Crear Cuenta",
                  width: 200,
                  height: 50,
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

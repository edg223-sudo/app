import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width; // ancho del botón
  final double height; // alto del botón

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = 250, // valor por defecto
    this.height = 55, // valor por defecto
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white, // fondo blanco
          foregroundColor: Colors.black, // texto negro
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Colors.black, width: 2), // borde negro
          ),
          elevation: 6,
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}

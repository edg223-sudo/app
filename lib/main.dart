import 'package:flutter/material.dart';
import 'main_home.dart';
import 'login.dart';
import 'register.dart';
import 'pokedex.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/pokedex': (context) => const PokedexScreen(),
      },
    );
  }
}

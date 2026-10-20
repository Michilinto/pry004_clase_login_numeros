import 'package:flutter/material.dart';
import 'vistas/pantallas/login_pantalla.dart';
import 'vistas/pantallas/numeros_pantalla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPantalla(),
    );
  }
}


import 'package:flutter/material.dart';

class BotonAccion extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;

  BotonAccion({
    required this.texto,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
      ),
      child: Text(texto),
    );
  }
}
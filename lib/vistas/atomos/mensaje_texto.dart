import 'package:flutter/material.dart';

class MensajeTexto extends StatelessWidget {
  final String mensaje;

  MensajeTexto({required this.mensaje});

  @override
  Widget build(BuildContext context) {
    return Text(
      mensaje,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.green.shade900,
        fontSize: 16,
      ),
    );
  }
}
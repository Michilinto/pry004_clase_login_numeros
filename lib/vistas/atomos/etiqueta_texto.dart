import 'package:flutter/material.dart';

class EtiquetaTexto extends StatelessWidget {
  final String texto;

  EtiquetaTexto({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../atomos/etiqueta_texto.dart';
import '../atomos/campo_texto.dart';

class EntradaLogin extends StatelessWidget {
  final String etiqueta;
  final TextEditingController controller;
  final bool ocultar;


  EntradaLogin({
    required this.etiqueta,
    required this.controller,
    this.ocultar = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        EtiquetaTexto(texto: etiqueta),
        SizedBox(height: 15),
        CampoTexto(
          controller: controller,
          ocultar: ocultar,
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
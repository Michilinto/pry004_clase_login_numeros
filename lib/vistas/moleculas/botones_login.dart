import 'package:flutter/material.dart';
import '../atomos/boton_accion.dart';

class BotonesLogin extends StatelessWidget {
  final VoidCallback ingresar;
  final VoidCallback limpiar;

  BotonesLogin({
    required this.ingresar,
    required this.limpiar,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BotonAccion(
          texto: 'Ingresar',
          onPressed: ingresar,
        ),
        SizedBox(height: 15),
        BotonAccion(
          texto: 'Limpiar',
          onPressed: limpiar,
        ),
      ],
    );
  }
}
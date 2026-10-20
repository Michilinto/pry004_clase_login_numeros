import 'package:flutter/material.dart';
import '../atomos/icono_login.dart';
import '../atomos/mensaje_texto.dart';
import '../moleculas/entrada_login.dart';
import '../moleculas/botones_login.dart';

class FormularioLogin extends StatelessWidget {
  final TextEditingController correo;
  final TextEditingController contrasenia;
  final VoidCallback ingresar;
  final VoidCallback limpiar;
  final String mensaje;

  FormularioLogin({
    required this.correo,
    required this.contrasenia,
    required this.ingresar,
    required this.limpiar,
    required this.mensaje,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        IconoLogin(icono: Icons.person),
        SizedBox(height: 20),
        MensajeTexto(mensaje: mensaje),
        SizedBox(height: 15),
        EntradaLogin(
          etiqueta: 'Correo electrónico',
          controller: correo,
        ),
        EntradaLogin(
          etiqueta: 'Contraseña',
          controller: contrasenia,
          ocultar: false,
        ),
        SizedBox(height: 15),
        BotonesLogin(
          ingresar: ingresar,
          limpiar: limpiar,
        ),
      ],
    );
  }
}
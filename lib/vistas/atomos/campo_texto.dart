import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final TextEditingController controller;
  final bool ocultar;

  CampoTexto({
    required this.controller,
    this.ocultar = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: ocultar,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
      ),
    );
  }
}
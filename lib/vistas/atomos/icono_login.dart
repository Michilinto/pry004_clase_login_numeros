import 'package:flutter/material.dart';

class IconoLogin extends StatelessWidget {
  final IconData icono;

  IconoLogin({required this.icono});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icono,
      size: 70,
      color: Colors.lightGreen,
    );
  }
}
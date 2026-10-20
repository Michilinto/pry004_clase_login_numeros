import 'package:flutter/material.dart';
import '../atomos/campo_numero.dart';

class EntradaNumero extends StatelessWidget{
  final String etiqueta;
  final TextEditingController controller;

  EntradaNumero({required this.etiqueta, required this.controller}); // inicializar


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(etiqueta,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15,),
        CampoNumero(controller: controller),
        SizedBox(height: 15,),
      ],
    );
  }

}
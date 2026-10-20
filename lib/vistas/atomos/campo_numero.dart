import 'package:flutter/material.dart';

class CampoNumero extends StatelessWidget{
  // mapeo
  final TextEditingController controller;


  CampoNumero({
      super.key,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.numberWithOptions(
        signed: true,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Ingrese un numero',
      ),
    );
  }
}
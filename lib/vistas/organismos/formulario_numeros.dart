import 'package:flutter/cupertino.dart';

import '../moleculas/entrada_numero.dart';

class FormularioNumeros extends StatelessWidget{
  // mapeo
  final TextEditingController a;
  final TextEditingController b;
  final TextEditingController c;


  FormularioNumeros({required this.a, required this.b, required this.c});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EntradaNumero(etiqueta: 'Ingrese el primer numero', controller: a),
        EntradaNumero(etiqueta: 'Ingrese el segundo numero', controller: b),
        EntradaNumero(etiqueta: 'Ingrese el tercer numero', controller: c),
      ],
    );
  }

}
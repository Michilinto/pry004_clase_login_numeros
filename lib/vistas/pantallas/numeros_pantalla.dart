import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../controladores/numeros_controladores.dart';
import '../../modelos/numeros_modelos.dart';
import '../organismos/formulario_numeros.dart';

class NumerosPantalla extends StatefulWidget{
  // constructor
  NumerosPantalla({super.key});

  @override
  State<NumerosPantalla> createState() => _NumerosPantallaState();
}
class _NumerosPantallaState extends State<NumerosPantalla> {
  // mapeo de objetos
  final a = TextEditingController();
  final b = TextEditingController();
  final c = TextEditingController();
  // instanciacion de clases
  final controladores = NumerosControladores();
  // variable para almacenar resultados
  NumerosModelos? resultado;
  // metodo calcular
  void calcular (){
    int? n1 = int.tryParse(a.text);
    int? n2 = int.tryParse(b.text);
    int? n3 = int.tryParse(c.text);

    if (n1 == null || n2 == null || n3 == null) {
      setState(() {
        resultado = null;
      });
      return;
    }
    setState(() {
      resultado = controladores.calcular(n1,n2,n3);
    });
  }
  // metodo limpiar
  void limpiar (){
    a.clear();
    b.clear();
    c.clear();
    setState(() {
      resultado = null;
    });
  }

  // diseno de pantalla
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio de números',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Ingrese 3 valores', textAlign: TextAlign.center,),
            SizedBox(height: 15,),
            // formulario
            FormularioNumeros(a: a, b: b, c: c),
            SizedBox(height: 15,),
            // boton calcular
            ElevatedButton(
                onPressed: calcular,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.white,
                ),
                child: Text('Calcular'),
            ),
            SizedBox(height: 15,),
            // mostrar resultados
            if (resultado != null)
              Card(
                color: Colors.lightGreen.shade100,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Resultados',
                        style: TextStyle(
                          color: Colors.green.shade900,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text('Números diferentes: ${resultado!.diferentes}'),
                      Text('Suma: ${resultado!.suma}'),
                      Text('Promedio: ${resultado!.promedio.toStringAsFixed(2)}'),
                      Text('Producto: ${resultado!.producto}'),
                      Text('Divisible: ${resultado!.divisible}'),
                      SizedBox(height: 15,),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: limpiar,
        child: Icon(Icons.cleaning_services),
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
      ),
    );
  }

}
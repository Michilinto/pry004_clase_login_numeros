import 'package:flutter/material.dart';
import '../../controladores/login_controladores.dart';
import '../../modelos/login_modelos.dart';
import '../organismos/formulario_login.dart';
import 'numeros_pantalla.dart';

class LoginPantalla extends StatefulWidget {
  LoginPantalla({super.key});

  @override
  State<LoginPantalla> createState() => _LoginPantallaState();
}

class _LoginPantallaState extends State<LoginPantalla> {
  // mapeo de objetos
  final correo = TextEditingController();
  final contrasenia = TextEditingController();

  // instanciacion de clases
  final controladores = LoginControladores();

  // resultados
  LoginModelos? resultado;
  String mensaje = '';

  // metodo ingresar
  void ingresar() {
    resultado = controladores.ingresar(
      correo.text.trim(),
      contrasenia.text,
    );

    setState(() {
      mensaje = resultado!.mensaje;
    });

    if (resultado!.acceso) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NumerosPantalla(),
        ),
      );
    }
  }

  // metodo limpiar
  void limpiar() {
    correo.clear();
    contrasenia.clear();

    setState(() {
      resultado = null;
      mensaje = '';
    });
  }

  // diseno de pantalla
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inicio de sesión',
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
        child: FormularioLogin(
          correo: correo,
          contrasenia: contrasenia,
          ingresar: ingresar,
          limpiar: limpiar,
          mensaje: mensaje,
        ),
      ),
    );
  }
}
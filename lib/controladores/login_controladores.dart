import '../modelos/login_modelos.dart';

class LoginControladores {
  LoginModelos ingresar(String correo, String contrasenia) {
    LoginModelos datos = LoginModelos(correo, contrasenia);

    if (correo.isEmpty || contrasenia.isEmpty) {
      datos.mensaje = 'Ingrese el correo y la contraseña';
    } else if (correo == 'admin@espe.edu.ec' &&
        contrasenia == '1234') {
      datos.acceso = true;
      datos.mensaje = 'Inicio de sesión correcto';
    } else {
      datos.mensaje = 'Correo o contraseña incorrectos';
    }

    return datos;
  }
}
/* import 'package:appfrontautos/utils/isEmailValid.dart';
        import 'package:appfrontautos/utils/isPasswordValid.dart'; */
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:vidaomuerte/models/user.dart';
import 'package:vidaomuerte/widgets/widget.dart';
import 'package:http/http.dart' as http;

import '../models/userErorr.dart';
import '../services/user.dart';
import '../utils/isEmailValid.dart';
import '../utils/isPasswordValid.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

Future<bool> login(String username, String password) async {
  var headers = {'Content-Type': 'application/json'};
  var request = http.Request(
      'POST',
      Uri.parse(
          'https://proyet-personal-clase1-backend-dev-dccm.4.us-1.fl0.io/api/auth/local'));
  request.body = json.encode({"identifier": username, "password": password});
  request.headers.addAll(headers);

  http.StreamedResponse response =
      await request.send(); //conn el await, le decimos que espere la respuesta

  return (response.statusCode == 200);
}

class LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

//userService debe llamar al servicio que en esta oportunidad es la clase LoginService, que es de la carpeta services,del archivo user.dart
  final userService = LoginService();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/volante.png'), // Aquí se agrega la imagen de fondo
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: size.height * 0.02),
                  TxtLogin(),
                  SizedBox(height: size.height * 0.02),

                  //correo
                  SizedBox(height: size.height * 0.02),

                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(labelText: 'Usuario'),
                  ),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                  ),

                  SizedBox(height: size.height * 0.1),
                  //constraseña
                  Texbuton(), // convertirlo en un texbuton
                  SizedBox(height: size.height * 0.02),

                  // CONTENIDO DE BOTON DE VALIDACION
                  ElevatedButton(
                      onPressed: () async {
                        //definir valiables captura de valor de los campos de text o TextField
                        String username = _usernameController.text;
                        String password = _passwordController.text;

                        if (!isEmailValid(username)) {
                          mostrarErrorConSnackBar(context, 'Email incorrecto');
                          return;
                        }
                        //consultar por que si esta bn la password no me deja entrar
                        if (!isPasswordValid(password)) {
                          mostrarErrorConSnackBar(context,
                              'La constraseña debe tener al menos 8 caracteres, incluir 1 Mayuscula, 1 numero y un caracter especial, que no se " @ o . " ');
                          return;
                        }

                        Object response =
                            await userService.login(username, password);

                        //quede en la de mostrar mensaje por snackbar minuto 11:28 video 3

                        if (response is User) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreens()));
                          return;
                        }
                        if (response is UserErorr) {
                          //mostrarErrorConSnackBar(context, response.message);//alerta de error con snackbar

                          //alerta de error con AlertDialog
                          mostrarErrorConAlertDialog(context, response.message);
                          return;
                        }
                        // ignore: use_build_context_synchronously
                        mostrarErrorConAlertDialog(context, 'Error inesperado');
                      },
                      child: Text('Iniciar sesion')),
                  /*           
                        bool valid = (await userService.login(
                            username, password)) as bool;

                        if (valid) {
                        
                        } else {
                          print('login fallido');
                        } */

                  /* if (!isEmailValid(username)) {
                          mostrarErrorConSnackbar(context, "Email invalido");
                          return;
                        }

                        if (!isPasswordValid(password)) {
                          mostrarErrorConSnackbar(context,
                              "La constraseña debe tener al menos 8 caracteres,incluir una letra mayuscula, un numero y un caracter especial, que no sea '@ , .'");
                          return;
                        }
  */

                  SizedBox(height: size.height * 0.02),
                  BtnLogin(),
                  SizedBox(height: size.height * 0.001),
                  TxtLogin3(),
                  SizedBox(height: size.height * 0.02),
                  BtnRedesSociales()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//widget de alertas

//widgetsnackbar
void mostrarErrorConSnackBar(BuildContext context, String mensaje) {
  final snackbar = SnackBar(
    content: Text(mensaje),
    action: SnackBarAction(label: 'Cerrar', onPressed: () {}),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

//widget alertDialogo
void mostrarErrorConAlertDialog(BuildContext context, String mensaje) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        /*  title: Text('Error'),
                      content: Text(mensaje), */
        actions: <Widget>[
          Container(
            child: Column(children: [
              Image.asset('assets/alert1.png'),
              SizedBox(height: 10),
              Text(
                'Ups!',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF001996),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Campos invalidos,intentelo nuevamente',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFFE65C00),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                child: Text('Intentarlo nuevamente'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ]),
          ),
        ],
      );
    },
  );
}

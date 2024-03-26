import 'package:flutter/material.dart';
import 'package:vidaomuerte/models/LoginConfirm.dart';
import 'package:vidaomuerte/models/LoginConfirm_Erorr.dart';
import 'package:vidaomuerte/models/PerfilCreate.dart';
import 'package:vidaomuerte/screens/crear_Perfil.dart';
import 'package:vidaomuerte/utils/isPasswordValid.dart';
import 'package:vidaomuerte/widgets/widget.dart';
import 'package:http/http.dart' as http;

import '../services/LoginService.dart';
import '../utils/isEmailValid.dart';

class LoginScreen extends StatefulWidget {
  final PerfilCreate? perfil;
  const LoginScreen({super.key, this.perfil});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool _hideHint = false;
  final _usernameController =
      TextEditingController(/* text: 'ann1a@gmail.com' */);
  final _passwordController = TextEditingController(/* text: 'Anna997!' */);
  final focusNode = FocusNode();
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
              'assets/volante.png',
            ),
            fit: BoxFit.fill, // Aquí se agrega la imagen de fondo
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
                  SizedBox(height: size.height * 0.16),

                  TxtLogin(),

                  SizedBox(height: size.height * 0.02),

                  //correo
                  SizedBox(height: size.height * 0.02),

                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 6),
                    child: Row(children: [
                      Icon(
                        Icons.person_pin_outlined,
                        color: Color(0xFF001996),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Usuario',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          decorationThickness: 1.5,
                        ),
                      )
                    ]),
                  ),

                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        hintText: 'Ingresa tu correo electrónico ',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFF001996)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFFE65C00)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Color(0xD9D9D9D9),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),

                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 6),
                    child: Row(children: [
                      Icon(
                        Icons.lock_person_outlined,
                        color: Color(0xFF001996),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Contraseña',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          decorationThickness: 1.5,
                        ),
                      )
                    ]),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        hintText: 'Ingresa tu contraseña ',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFF001996)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFFE65C00)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Color(0xD9D9D9D9),
                      ),
                      obscureText: true,
                    ),
                  ),

                  SizedBox(height: 40),

                  Texbuton(),

                  SizedBox(height: 40),

                  // CONTENIDO DE BOTON DE VALIDACION
                  ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(352, 30)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(60, 20, 60, 20)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF001996)),
                      foregroundColor:
                          MaterialStateProperty.all(Color(0xFFEFF0F1)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Color(0xFF001996), width: 1),
                      )),
                    ),
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
                          await userService.Login(username, password);

                      if (response is LoginConfirm) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreens(
                                    /* user: response */))); // al momento de comentar el user, funciona la app
                        return;
                      }
                      if (response is LoginConfirm_Erorr) {
                        //mostrarErrorConSnackBar(context, response.message);//alerta de error con snackbar

                        //alerta de error con AlertDialog
                        mostrarErrorConAlertDialog(
                            context, "Error de inicio de sesión");
                        return;
                      }
                      // ignore: use_build_context_synchronously
                      mostrarErrorConAlertDialog(context, 'Error inesperado');
                    },
                    child: Text(' Ingresar '),
                  ),

                  /*  bool valid = (await userService.login(
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
                        }  */
                  SizedBox(height: 40),
                  BtnLogin(),
                  SizedBox(height: size.height * 0.001),
                  TxtLogin3(),
                  SizedBox(height: size.height * 0.02),
                  BtnRedesSociales(),
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

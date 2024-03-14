import 'package:flutter/material.dart';
import 'package:vidaomuerte/models/UserCreate.dart';
import 'package:vidaomuerte/models/UserCreate_Erorr.dart';
import 'package:vidaomuerte/screens/crear_Perfil.dart';
import 'package:vidaomuerte/services/UserCreate.dart';
import 'package:vidaomuerte/utils/isPasswordValid.dart';
import 'package:vidaomuerte/widgets/widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../utils/isEmailValid.dart';

class CrearUser extends StatefulWidget {
  const CrearUser({Key? key}) : super(key: key);

  @override
  CreateUserState createState() => CreateUserState();
}

class CreateUserState extends State<CrearUser> {
//variables de almacenamiento

  final TextEditingController _email_controller =
      TextEditingController(text: 'anna@gmail.com');
  final TextEditingController _password_controller =
      TextEditingController(text: 'Anna998!');

  final createuserService = UserService();

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>(); //variable global para input

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/crearusuario.png'), // Aquí se agrega la imagen de fondo
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.02),

                  //texto de crear perfil
                  TextCrearUsuario(),

                  SizedBox(height: size.height * 0.02),

                  TextField(
                    controller: _email_controller,
                    decoration: InputDecoration(labelText: 'email'),
                  ),
                  TextField(
                    controller: _password_controller,
                    decoration: InputDecoration(labelText: 'password'),
                  ),
                  SizedBox(height: size.height * 0.02),
                  ElevatedButton(
                      onPressed: () async {
                        String create_email = _email_controller.text;
                        String create_password = _password_controller.text;

                        if (!isEmailValid(create_email)) {
                          mostrarErrorConSnackBar(context, 'Email incorrecto');
                          return;
                        }

                        if (!isPasswordValid(create_password)) {
                          mostrarErrorConSnackBar(context,
                              'La constraseña debe tener al menos 8 caracteres, incluir 1 Mayuscula, 1 numero y un caracter especial, que no se " @ o . " ');
                          return;
                        }

                        Object response = await createuserService.createUser(
                            create_email, create_password);

                        print(response);

                        if (response is UserCreate) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CrearPerfil(user: response.id)));
                          return;
                        }
                        if (response is UserCreate_Erorr) {
                          //mostrarErrorConSnackBar(context, response.message);//alerta de error con snackbar
                          print(response.status);
                          //alerta de error con AlertDialog
                          mostrarErrorConAlertDialog(
                              context, "Error de inicio de sesión");
                          return;
                        }
                        // ignore: use_build_context_synchronously
                        mostrarErrorConAlertDialog(context, 'Error inesperado');
                      },
                      child: Text(' Siguiente ')),

                  SizedBox(height: 20),

                  Container(
                    /*     color: Colors.red, */
                    /*  height: size.height * 0.3, */
                    margin: EdgeInsets.only(top: 30),
                    width: double.infinity,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(),
                          ElevatedButton(
                            onPressed: () {
                              //codigon para minimizar el teclado
                              FocusScope.of(context).requestFocus(FocusNode());

                              //* TODO: imprimir valores del formulario

                              /*  Navigator.pushNamed( 
                        context, 'login');  */ // Acción cuando se presiona el botón
                            },
                            style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(Size(352, 50)),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.fromLTRB(60, 10, 60, 10)),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF001996)),
                              foregroundColor:
                                  MaterialStateProperty.all(Color(0xFFEFF0F1)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                    color: Color(0xFF001996), width: 1),
                              )),
                            ),
                            child: Text('Crear Usuario'),
                          ),
                          SizedBox(height: 18),
                        ],
                      ),
                    ),
                  ),

                  //agregar boton de crear usuario y diriguir a login
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

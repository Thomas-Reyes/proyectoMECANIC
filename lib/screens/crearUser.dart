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

  final _email_controller = TextEditingController(text: 'anna@gmail.com');
  final _password_controller = TextEditingController(text: 'Anna998!');
  final _confirmPassword_controller = TextEditingController(text: 'Anna998!');

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

                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 6),
                    child: const Row(children: [
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
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _email_controller,
                      decoration: InputDecoration(
                        hintText: 'Ingresa tu correo electrónico',
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
                    child: const Row(children: [
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
                      controller: _password_controller,
                      decoration: InputDecoration(
                        hintText: 'Ingresa tu contraseña',
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
                    child: const Row(children: [
                      Icon(
                        Icons.lock_person_outlined,
                        color: Color(0xFF001996),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Confirmar contraseña',
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
                      controller: _confirmPassword_controller,
                      decoration: InputDecoration(
                        hintText: 'Confirma tu contraseña',
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
                  SizedBox(height: 50),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 70),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'La contraseña debe incluir:',
                              style: TextStyle(
                                color: Color(0xFF001996),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.play_arrow_outlined,
                                  size: 20,
                                  color: Color(0xFFE65C00),
                                ),
                                SizedBox(
                                    width:
                                        4), // Espacio entre el icono y el texto
                                Text(
                                  'Una mayúscula',
                                  style: TextStyle(
                                    color: Color(0xFF001996),
                                    fontFamily: 'Roboto',
                                    fontSize: 20,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                    decorationThickness: 1.5,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.play_arrow_outlined,
                                  size: 20,
                                  color: Color(0xFFE65C00),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Un numero',
                                  style: TextStyle(
                                    color: Color(0xFF001996),
                                    fontFamily: 'Roboto',
                                    fontSize: 20,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                    decorationThickness: 1.5,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.play_arrow_outlined,
                                  size: 20,
                                  color: Color(0xFFE65C00),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Un carácter especial',
                                  style: TextStyle(
                                    color: Color(0xFF001996),
                                    fontFamily: 'Roboto',
                                    fontSize: 20,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                    decorationThickness: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),

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
                        String create_email = _email_controller.text;
                        String create_password = _password_controller.text;
                        String confirmPassword =
                            _confirmPassword_controller.text;

                        if (!isEmailValid(create_email)) {
                          mostrarErrorConSnackBar(context, 'Email incorrecto');
                          return;
                        }

                        if (!isPasswordValid(create_password)) {
                          mostrarErrorConSnackBar(context,
                              'La constraseña debe tener al menos 8 caracteres, incluir 1 Mayuscula, 1 numero y un caracter especial, que no se " @ o . " ');
                          return;
                        }

                        if (create_password != confirmPassword) {
                          mostrarErrorConSnackBar(
                              context, 'La constraseña NO coinciden');
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

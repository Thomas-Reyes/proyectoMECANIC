import 'package:flutter/material.dart';
import 'package:vidaomuerte/widgets/widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/crearUser.dart';
import '../models/crearUser_Erorr.dart';
import '../services/crearUser.dart';
import '../utils/isEmailValid.dart';

class CrearPerfil extends StatefulWidget {
  const CrearPerfil({Key? key}) : super(key: key);

  @override
  State<CrearPerfil> createState() => CrearPerfilState();
}

Future<void> Data(UserData userData) async {
  try {
    var url = Uri.parse('https://tu_api_strapi.com/endpoint');
    var response = await http.post(
      url,
      body: jsonEncode(userData.toJson()),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      // Datos enviados exitosamente
      print('Datos enviados exitosamente');
    } else {
      // Error al enviar datos
      print('Error al enviar datos: ${response.statusCode}');
    }
  } catch (e) {
    // Manejo de errores
    print('Error: $e');
  }
}

class CrearPerfilState extends State<CrearPerfil> {
//variables de almacenamiento

  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _rutController = TextEditingController();
  final TextEditingController _direccionController = TextEditingController();
  final TextEditingController _comunaController = TextEditingController();
  final TextEditingController _telefonoController = TextEditingController();
  late DateTime _FechaController;

  final createuserService = CrearUserService();

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
                    controller: _nombreController,
                    decoration: InputDecoration(labelText: 'Nombre'),
                  ),
                  TextField(
                    controller: _rutController,
                    decoration: InputDecoration(labelText: 'Rut'),
                  ),
                  /*    TextField(
              controller: _FechaController,
              decoration: InputDecoration(labelText: 'Fecha de nacimiento'),
            ),
            TextField(
              controller: _CreateusernameController,
              decoration: InputDecoration(labelText: 'email'),
            ),
            TextField(
              controller: _CreatepasswordController,
              decoration: InputDecoration(labelText: 'password'),
            ),
 */

                  SizedBox(height: size.height * 0.02),
                  /*  ElevatedButton(
                      onPressed: () async {
                        String create_username = _CreateusernameController.text;
                        String create_password = _CreatepasswordController.text;

                        if (!isEmailValid(create_username)) {
                          mostrarErrorConSnackBar(context, 'Email incorrecto');
                          return;
                        }

                        Object response = await createuserService.createUsuario(
                            create_username, create_password);

                        //quede en la de mostrar mensaje por snackbar minuto 11:28 video 3

                        if (response is UserData) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                          return;
                        }
                        if (response is crearUser_Erorr) {
                          //mostrarErrorConSnackBar(context, response.message);//alerta de error con snackbar

                          //alerta de error con AlertDialog
                          mostrarErrorConAlertDialog(
                              context, "Error de inicio de sesión");
                          return;
                        }
                        // ignore: use_build_context_synchronously
                        mostrarErrorConAlertDialog(context, 'Error inesperado');
                      },
                      child: Text('Crear usuario')), */

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

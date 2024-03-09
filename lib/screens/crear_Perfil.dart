import 'package:flutter/material.dart';
import 'package:vidaomuerte/models/PerfilCreate.dart';
import 'package:vidaomuerte/models/PerfilCreate_Erorr.dart';
import 'package:vidaomuerte/models/UserCreate.dart';
import 'package:vidaomuerte/services/PerfilCreate.dart';
import 'package:vidaomuerte/widgets/widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../utils.dart';

//agregar rut-telefono-comuna-direccion-fecha de nacimiento

class CrearPerfil extends StatefulWidget {
  final int user;

  const CrearPerfil({Key? key, this.user = 0}) : super(key: key);
  //required UserCreate user, es la variable que almacena los datos de user
  @override
  State<CrearPerfil> createState() => CrearPerfilState();
}

class CrearPerfilState extends State<CrearPerfil> {
//variables de almacenamiento

  final TextEditingController _nombreApellidoController =
      TextEditingController(text: 'Perro Juan');
  final TextEditingController _rutController =
      TextEditingController(text: '21381514-8');
  final TextEditingController _fechaController =
      TextEditingController(text: 'no me dejo');
  final TextEditingController _direccionController =
      TextEditingController(text: 'Perro con palta');
  final TextEditingController _comunaController =
      TextEditingController(text: 'Perros unidos');
  final TextEditingController _contactoController =
      TextEditingController(text: '962824677');

  final createuserService = PerfilService();

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
                    controller: _nombreApellidoController,
                    decoration: InputDecoration(labelText: 'nombre apellido'),
                  ),
                  TextField(
                    controller: _rutController,
                    decoration: InputDecoration(labelText: 'Rut'),
                  ),

                  TextField(
                    controller: _fechaController,
                    decoration:
                        InputDecoration(labelText: 'Fecha de nacimiento'),
                  ),

                  TextField(
                    controller: _direccionController,
                    decoration: InputDecoration(labelText: 'direccion'),
                  ),
                  TextField(
                    controller: _comunaController,
                    decoration: InputDecoration(labelText: 'comuna'),
                  ),
                  TextField(
                    controller: _contactoController,
                    decoration: InputDecoration(labelText: 'Contacto'),
                  ),

                  SizedBox(height: size.height * 0.02),
                  ElevatedButton(
                      onPressed: () async {
                        String create_nombreApellido =
                            _nombreApellidoController.text;
                        String create_rut = _rutController.text;
                        String create_fecha = _rutController.text;
                        String create_direccion = _direccionController.text;
                        String create_comuna = _comunaController.text;
                        int create_contacto =
                            int.parse(_contactoController.text);

                        //NombreApellido
                        if (!isNombreApellidoValid(create_nombreApellido)) {
                          mostrarErrorConSnackBar(
                              context, 'Nombre Apellido Incorrecto');
                          return;
                        }
                        //Rut
                        if (!isValidRut(create_rut)) {
                          mostrarErrorConSnackBar(context, 'Rut Incorrecto');
                          return;
                        }
                        /*   //Fecha
                        if (!isFechaValid(create_fecha)) {
                          mostrarErrorConSnackBar(context, 'Fecha Incorrecta');
                          return;
                        }
                         */ //Direccion
                        if (!isDireccionValid(create_direccion)) {
                          mostrarErrorConSnackBar(
                              context, 'Direccion Incorrecta');
                          return;
                        }
                        //Comuna
                        if (!isComunaValid(create_comuna)) {
                          mostrarErrorConSnackBar(context, 'Comuna Incorrecta');
                          return;
                        }
                        //Contacto
                        if (!isContactoValid(create_contacto)) {
                          mostrarErrorConSnackBar(
                              context, 'Contacto Incorrecto');
                          return;
                        }

                        Object response = await createuserService.createPerfil(
                            create_nombreApellido,
                            create_rut,
                            create_fecha,
                            create_direccion,
                            create_comuna,
                            create_contacto,
                            widget.user);

                        //create_contacto

                        print(response);
                        //quede en la de mostrar mensaje por snackbar minuto 11:28 video 3

                        if (response is PerfilCreate) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LoginScreen(perfil: response)));
                          return;
                        }
                        if (response is PerfilCreate_Erorr)
                        //mostrarErrorConSnackBar(context, response.message);//alerta de error con snackbar

                        //alerta de error con AlertDialog
                        {
                          mostrarErrorConAlertDialog(
                              context, "Error de inicio de sesión");
                          return;
                        }
                        print((message: 'Error pero pase'));
                        // ignore: use_build_context_synchronously
                        mostrarErrorConAlertDialog(context, 'Error inesperado');
                      },
                      child: Text('Crear Perfil')),

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

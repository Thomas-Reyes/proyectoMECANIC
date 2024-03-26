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
      TextEditingController(text: '23-05-1997');
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
                  SizedBox(height: 40),
                  //texto de crear perfil
                  TextCrearUsuario(),

                  SizedBox(height: 20),

                  //icono y label 1
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 6),
                    child: const Row(children: [
                      Icon(
                        Icons.person_pin,
                        color: Color(0xFF001996),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Nombre Apellido',
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
                  //input 1
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _nombreApellidoController,
                      decoration: InputDecoration(
                        hintText: 'Escribe tu nombre y apellido ',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
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

                  SizedBox(height: 20),
                  //icono y label 2
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 6),
                    child: const Row(children: [
                      Icon(
                        Icons.person_pin_outlined,
                        color: Color(0xFF001996),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Rut',
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
                  //input 2
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _rutController,
                      decoration: InputDecoration(
                        hintText: 'Escribe tu rut',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
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

                  SizedBox(height: 20),
                  //icono y label 3
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 6),
                    child: const Row(children: [
                      Icon(
                        Icons.date_range_outlined,
                        color: Color(0xFF001996),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Fecha de nacimiento',
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
                  //input 3
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _fechaController,
                      decoration: InputDecoration(
                        hintText: 'Indica tu fecha de nacimiento',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
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

                  SizedBox(height: 20),

                  //icono y label 4
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 6),
                    child: const Row(children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color(0xFF001996),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Dirección',
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
                  //input 4
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _direccionController,
                      decoration: InputDecoration(
                        hintText: 'Escribe tu dirección',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
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

                  SizedBox(height: 20),
                  //icono y label 5
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 6),
                    child: const Row(children: [
                      Icon(
                        Icons.directions,
                        color: Color(0xFF001996),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Comuna',
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
                  //input 5
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _comunaController,
                      decoration: InputDecoration(
                        hintText: 'Escribe tu comuna',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
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

                  SizedBox(height: 20),
                  //icono y label 6
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 6),
                    child: const Row(children: [
                      Icon(
                        Icons.phone,
                        color: Color(0xFF001996),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Contacto',
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
                  //input 6
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _contactoController,
                      decoration: InputDecoration(
                        hintText: 'Escribe tu numero de contacto',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
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

                  SizedBox(height: 40),

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
                      String create_nombreApellido =
                          _nombreApellidoController.text;
                      String create_rut = _rutController.text;
                      String create_fecha = _fechaController
                          .text; // Corregido: usar _fechaController.text
                      String create_direccion = _direccionController.text;
                      String create_comuna = _comunaController.text;
                      int create_contacto = int.parse(_contactoController.text);

                      if (!isNombreApellidoValid(create_nombreApellido)) {
                        mostrarErrorConSnackBar(
                            context, 'Nombre Apellido Incorrecto');
                        return;
                      }

                      if (!isValidRut(create_rut)) {
                        mostrarErrorConSnackBar(context, 'Rut Incorrecto');
                        return;
                      }

                      if (!isFechaValid(create_fecha)) {
                        mostrarErrorConSnackBar(context, 'Fecha Incorrecta');
                        return;
                      }

                      if (!isDireccionValid(create_direccion)) {
                        mostrarErrorConSnackBar(
                            context, 'Direccion Incorrecta');
                        return;
                      }

                      if (!isComunaValid(create_comuna)) {
                        mostrarErrorConSnackBar(context, 'Comuna Incorrecta');
                        return;
                      }

                      if (!isContactoValid(create_contacto.toString())) {
                        // Corregido: convertir a String antes de validar
                        mostrarErrorConSnackBar(context, 'Contacto Incorrecto');
                        return;
                      }

                      Object response = await createuserService.createPerfil(
                        create_nombreApellido,
                        create_rut,
                        create_fecha,
                        create_direccion,
                        create_comuna,
                        create_contacto,
                        widget.user,
                      );

                      if (response is PerfilCreate) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(perfil: response),
                          ),
                        );
                      } else if (response is PerfilCreate_Erorr) {
                        // Corregido: usar 'PerfilCreate_Error'
                        mostrarErrorConAlertDialog(context, response.message);
                      } else {
                        mostrarErrorConAlertDialog(context, 'Error inesperado');
                      }
                    },
                    child: Text('Crear Perfil'),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

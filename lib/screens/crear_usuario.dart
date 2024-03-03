import 'package:flutter/material.dart';
import 'package:vidaomuerte/widgets/widget.dart';

class CrearUsuario extends StatelessWidget {
  const CrearUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>(); //variable global para input

    final size = MediaQuery.of(context).size;

    final Map<String, String> formValues = {
      'first_name': 'Fernando',
      'rut': '19503995-k',
      'F_nacimiento': '23/05/1997',
      'direccion': 'uno oriente #676 villa futuro 3',
      'comuna': 'talagante',
      'contacto': '12345678',
      'email': 'fernando@google.com',
      'password': 'password',
    };

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
                  TextCrearUsuario(),
                  SizedBox(height: size.height * 0.02),

                  /*    // nombre completo
                  CustomInputField(
                    labelText: 'Nombre Completo',
                    hintText: 'Escribe tu nombre completo ',
                    icon: Icons.supervised_user_circle_rounded,
                    formProperty: 'first_name',
                    formValues: formValues,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Este campo es requerido';
                      }
                      return null; // Campo válido
                    },
                  ),

                  //rut
                  SizedBox(height: size.height * 0.04),
                  CustomInputField(
                    labelText: 'Rut',
                    hintText: 'Escribe tu rut',
                    formProperty: 'rut',
                    formValues: formValues,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Este campo es requerido';
                      }
                      if (!isValidRut(value)) {
                        return 'Rut inválido';
                      }
                      return null; // Campo válido
                    },
                  ),

                  //fecha nacimiento
                  SizedBox(height: size.height * 0.04),
                  CustomInputField(
                    labelText: 'Fecha de nacimiento',
                    hintText: 'Indica tu fecha de nacimiento (dd/mm/yyyy)',
                    icon: Icons.calendar_today,
                    formProperty: 'fecha_nacimiento',
                    formValues: formValues,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Este campo es requerido';
                      }
                      if (!isValidDate(value)) {
                        return 'Formato de fecha incorrecto';
                      }
                      return null; // Campo válido
                    },
                  ),

                  //direccion
                  SizedBox(height: size.height * 0.02),
                  CustomInputField(
                    labelText: 'Dirección',
                    hintText: 'Escribe tu dirección',
                    icon: Icons.supervised_user_circle_rounded,
                    formProperty: 'direccion',
                    formValues: formValues,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Este campo es requerido';
                      }
                      return null; // Campo válido
                    },
                  ),

                  //comuna
                  SizedBox(height: size.height * 0.02),
                  CustomInputField(
                    labelText: 'Comuna',
                    hintText: 'Escribe tu Comuna',
                    icon: Icons.supervised_user_circle_rounded,
                    formProperty: 'comuna',
                    formValues: formValues,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Este campo es requerido';
                      }
                      return null; // Campo válido
                    },
                  ),

                  //contacto
                  SizedBox(height: size.height * 0.02),
                  CustomInputField(
                    labelText: 'Contacto',
                    hintText: 'Escribe tu número de contacto',
                    icon: Icons.supervised_user_circle_rounded,
                    formProperty: 'contacto',
                    formValues: formValues,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Este campo es requerido';
                      }
                      if (!isValidPhoneNumber(value)) {
                        return 'Número de teléfono debe tener exactamente 8 dígitos';
                      }
                      return null; // Campo válido
                    },
                  ),

                  //correo
                  SizedBox(height: size.height * 0.02),
                  CustomInputField(
                    labelText: 'correo',
                    hintText: 'Escribe tu correo',
                    keyboardType: TextInputType.visiblePassword,
                    icon: Icons.lock,
                    formProperty:
                        'email', // Nombre de la propiedad en el objeto de formulario
                    formValues:
                        formValues, // Objeto de formulario que contiene los valores
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Este campo es requerido';
                      }
                      if (!isValidEmail(value)) {
                        return 'La contraseña debe tener 8 caracteres, al menos una mayúscula y un número, sin caracteres especiales';
                      }
                      return null; // Campo válido
                    },
                  ),

                  //constraseña
                  SizedBox(height: size.height * 0.02),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Escribe tu contraseña',
                    obscureText: true,
                    icon: Icons.supervised_user_circle_rounded,
                    formProperty: 'password',
                    formValues: formValues,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Este campo es requerido';
                      }
                      if (value.length != 8) {
                        return 'La contraseña debe tener exactamente 8 caracteres';
                      }
                      return null; // Campo válido
                    },
                  ), */
                  /*  BtnCrearUsuario(
                    
                  ), */

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

                              if (!myFormKey.currentState!.validate()) {
                                print('Formulario no valido');
                                return;
                              }

                              //* TODO: imprimir valores del formulario

                              print(formValues);

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

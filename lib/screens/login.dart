/* import 'package:appfrontautos/utils/isEmailValid.dart';
import 'package:appfrontautos/utils/isPasswordValid.dart'; */
import 'package:flutter/material.dart';
import 'package:vidaomuerte/widgets/widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

// thomas.alonsoreyes@gmail.com
// Thomas97/

  final _usernameController = TextEditingController(text: "");
  final _passwordController = TextEditingController(text: "");

/*   final userService = LoginApiService(); */

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

                  /*
                              CONTENIDO DE BOTON DE VALIDACION
                  ElevatedButton(
                      onPressed: () async {
                        //captura de valor de los campos de text o TextField
                        String username = _usernameController.text;
                        String password = _passwordController.text;

                        if (!isEmailValid(username)) {
                          mostrarErrorConSnackbar(context, "Email invalido");
                          return;
                        }

                        if (!isPasswordValid(password)) {
                          mostrarErrorConSnackbar(context,
                              "La constraseña debe tener al menos 8 caracteres,incluir una letra mayuscula, un numero y un caracter especial, que no sea '@ , .'");
                          return;
                        }

                        Object response =
                            await userService.login(username, password);
                      },
                      child: child), */

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

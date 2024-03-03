import 'package:flutter/material.dart';
import 'package:vidaomuerte/widgets/widget.dart';

class RecuperarCuenta extends StatelessWidget {
  const RecuperarCuenta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height * 0.9,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/volante.png'), // Aquí se agrega la imagen de fondo
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.02),
                  TxtRecuperacion(),
                  SizedBox(height: size.height * 0.02),

                  //correo
                  SizedBox(height: size.height * 0.02),
                  /*    CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Escribe tu Correo',
                    keyboardType: TextInputType.emailAddress,
                    icon: Icons.email,
                    formProperty: 'email',
                    formValues: formValues,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Este campo es requerido';
                      }
                      if (!isValidEmail(value)) {
                        return 'Email inválido';
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
                      if (value.length < 6) {
                        return 'La contraseña debe tener al menos 6 caracteres';
                      }
                      return null; // Campo válido
                    },
                  ),
 */
                  SizedBox(height: size.height * 0.04),
                  // convertirlo en un texbuton
                  SizedBox(height: size.height * 0.02),
                  BtnRecuperacion()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

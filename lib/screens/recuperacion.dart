import 'package:flutter/material.dart';
import 'package:vidaomuerte/widgets/widget.dart';

class RecuperarCuenta extends StatelessWidget {
  const RecuperarCuenta({Key? key}) : super(key: key);
//anna@gmail.com
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _email_controller1 = TextEditingController(text: '');
    final _email_controller2 = TextEditingController(text: '');
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
                  TxtRecuperacion(),

                  //correo 1
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
                      controller: _email_controller1,
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
                  SizedBox(
                    height: 30,
                  ),
                  //correo 2
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
                      controller: _email_controller2,
                      decoration: InputDecoration(
                        hintText: 'Confirma tu correo electrónico',
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
                  SizedBox(height: size.height * 0.04),
                  // convertirlo en un texbuton
                  SizedBox(height: size.height * 0.02),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
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
                      child: Text(' Recuperar contraseña '))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

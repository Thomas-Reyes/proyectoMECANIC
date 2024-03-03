import 'package:flutter/material.dart';

class BtnLogin extends StatelessWidget {
/*   const Pantalla_InicioScreen({Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          /*     color: Colors.red, */
          height: size.height * 0.2,
          width: size.width * 0.8,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(),
                /*        ElevatedButton(
                  onPressed: () {
                    // Acción cuando se presiona el botón
                    Navigator.pushNamed(context, 'home');
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(352, 20)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(60, 10, 60, 10)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF001996)),
                    foregroundColor:
                        MaterialStateProperty.all(Color(0xFFEFF0F1)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Color(0xFF001996), width: 1),
                    )),
                  ),
                  child: Text('Ingresar'),
                ), */
                SizedBox(height: 18),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,
                        'CrearUsuario'); // Acción cuando se presiona el botón
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(352, 20)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(60, 10, 60, 10)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFEFF0F1)),
                    foregroundColor:
                        MaterialStateProperty.all(Color(0xFF001996)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Color(0xFF001996), width: 1),
                    )),
                  ),
                  child: Text('Crear Usuario'),
                ),
                SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BtnRecuperacion extends StatelessWidget {
/*   const Pantalla_InicioScreen({Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          /*     color: Colors.red, */
          height: size.height * 0.2,
          width: size.width * 0.8,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, 'login'); // Acción cuando se presiona el botón
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(352, 20)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(60, 10, 60, 10)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF001996)),
                    foregroundColor:
                        MaterialStateProperty.all(Color(0xFFEFF0F1)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Color(0xFF001996), width: 1),
                    )),
                  ),
                  child: Text('Recuperar contraseña'),
                ),
                SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BtnCrearUsuario extends StatelessWidget {
/*   const Pantalla_InicioScreen({Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          /*     color: Colors.red, */
          height: size.height * 0.3,
          margin: EdgeInsets.all(10),
          width: double.infinity,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(),
                ElevatedButton(
                  onPressed: () {
                    //TODO: imprimir valores del formulario

                    /*  Navigator.pushNamed( 
                        context, 'login');  */ // Acción cuando se presiona el botón
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(352, 50)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(60, 10, 60, 10)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF001996)),
                    foregroundColor:
                        MaterialStateProperty.all(Color(0xFFEFF0F1)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Color(0xFF001996), width: 1),
                    )),
                  ),
                  child: Text('Crear Usuario'),
                ),
                SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BtnVitrina extends StatelessWidget {
/*   const Pantalla_InicioScreen({Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          /*     color: Colors.red, */
          height: size.height * 0.2,
          width: size.width * 0.8,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(),
                ElevatedButton(
                  onPressed: () {
                    /* Navigator.pushNamed(
                        context, 'login'); */ // Acción cuando se presiona el botón
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(352, 20)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(60, 10, 60, 10)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFE65C00)),
                    foregroundColor:
                        MaterialStateProperty.all(Color(0xFFEFF0F1)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Color(0xFF001996), width: 1),
                    )),
                  ),
                  child: Text(' Dale un vistazo '),
                ),
                SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BtnVitrina2 extends StatelessWidget {
/*   const Pantalla_InicioScreen({Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          /*     color: Colors.red, */
          height: size.height * 0.4,
          width: size.width * 0.4,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(),
                ElevatedButton(
                  onPressed: () {
                    /* Navigator.pushNamed(
                        context, 'login'); */ // Acción cuando se presiona el botón
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(352, 20)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(60, 10, 60, 10)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFE65C00)),
                    foregroundColor:
                        MaterialStateProperty.all(Color(0xFFEFF0F1)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Color(0xFF001996), width: 1),
                    )),
                  ),
                  child: Text(' Dale un vistazo '),
                ),
                SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//boton ubicacion
class BtnUbicacion extends StatelessWidget {
/*   const Pantalla_InicioScreen({Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          /*     color: Colors.red, */
          height: size.height * 0.4,
          width: size.width * 0.4,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(),
                ElevatedButton(
                  onPressed: () {
                    /* Navigator.pushNamed(
                        context, 'login'); */ // Acción cuando se presiona el botón
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(352, 20)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(60, 10, 60, 10)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFE65C00)),
                    foregroundColor:
                        MaterialStateProperty.all(Color(0xFFEFF0F1)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Color(0xFF001996), width: 1),
                    )),
                  ),
                  child: Text(' Buscar '),
                ),
                SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//botones de unboarding
class botonesprincipal extends StatelessWidget {
/*   const Pantalla_InicioScreen({Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          /*    color: Colors.red, */
          height: size.height * 0.2,
          width: double.infinity,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,
                        'CrearUsuario'); // Acción cuando se presiona el botón
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(500, 50)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(60, 10, 60, 10)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFEFF0F1)),
                    foregroundColor:
                        MaterialStateProperty.all(Color(0xFF001996)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Color(0xFF001996), width: 1),
                    )),
                  ),
                  child: Text('Crear Usuario'),
                ),
                SizedBox(height: 18),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, 'login'); // Acción cuando se presiona el botón
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(500, 50)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(60, 10, 60, 10)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF001996)),
                    foregroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 255, 255, 255)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Color(0xFF001996), width: 1),
                    )),
                  ),
                  child: Text('Ingresar'),
                ),
                SizedBox(height: 18),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, 'vitrina'); // tiene que diriguir a vitrina
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(500, 50)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(60, 10, 60, 10)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFE65C00)),
                    foregroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 255, 255, 255)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Color(0xFF001996), width: 1),
                    )),
                  ),
                  child: Text('Ver vitrina'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class botonnaranjo1 extends StatelessWidget {
/*   const Pantalla_InicioScreen({Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: 150,
          height: 30,
          decoration: BoxDecoration(
            color: Color(0xFFE65C00),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'tarjetadetallada');
              },
              borderRadius: BorderRadius.circular(30),
              child: const Center(
                child: Text(
                  "Dale un Vistazo",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class botonnaranjo2 extends StatelessWidget {
/*   const Pantalla_InicioScreen({Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          /*     color: Colors.red, */
          width: 358,
          height: 50,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,
                        'informacionAuto'); // Acción cuando se presiona el botón
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFE65C00)),
                    foregroundColor:
                        MaterialStateProperty.all(Color(0xFFEFF0F1)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Color(0xFF001996), width: 1),
                    )),
                  ),
                  child: Text('Crear Usuario'),
                ),
                SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//boton de NewestItems
class botonContactar2 extends StatelessWidget {
/*   const Pantalla_InicioScreen({Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          /*     color: Colors.red, */
          width: 150,
          height: 50,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,
                        'informacionAuto'); // Acción cuando se presiona el botón
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFE65C00)),
                    foregroundColor:
                        MaterialStateProperty.all(Color(0xFFEFF0F1)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Color(0xFF001996), width: 1),
                    )),
                  ),
                  child: Text('Dale un Vistazo'),
                ),
                SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//boton de populate
class botonContactar extends StatelessWidget {
/*   const Pantalla_InicioScreen({Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: 150,
          height: 30,
          decoration: BoxDecoration(
            color: Color(0xFFE65C00),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'informacionAuto');
              },
              borderRadius: BorderRadius.circular(30),
              child: const Center(
                child: Text(
                  "Dale un Vistazo",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

//boton de home
class boton_home extends StatelessWidget {
/*   const Pantalla_InicioScreen({Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: 350,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFFE65C00),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'informacionAuto');
              },
              borderRadius: BorderRadius.circular(30),
              child: const Center(
                child: Text(
                  "Ver vitrina de autos",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

//boton de populate
class botonPUBLICAR extends StatelessWidget {
/*   const Pantalla_InicioScreen({Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: 300,
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xFFE65C00),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'ingresarAuto');
              },
              borderRadius: BorderRadius.circular(30),
              child: const Center(
                child: Text(
                  "Publicar auto",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

//alert para loginimport 'package:flutter/material.dart';
class AlertWidget {
  static void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('¡Alerta!'),
          contentPadding: EdgeInsets.symmetric(
              vertical: 20, horizontal: 10), // Ajuste del tamaño de la tarjeta
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es un mensaje de alerta.'),
              SizedBox(height: 20), // Espacio entre el texto y la imagen
              Image.asset(
                'assets/aaa.png', // Ruta de la imagen
                width: 100, // Ancho de la imagen
                height: 100, // Alto de la imagen
                fit: BoxFit.cover, // Ajuste de la imagen
              ),
              // Agregar más contenido si es necesario
            ],
          ),
          actions: <Widget>[
            Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: 130, // Ancho del contenedor
                    height: 130, // Alto del contenedor
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Forma circular
                      color: Colors.white, // Color de fondo
                      border: Border.all(
                        color: Color(0xFFE65C00), // Color del borde
                        width: 4.0, // Ancho del borde
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40, // Ajusta la posición vertical del botón
                  left: MediaQuery.of(context).size.width / 2 -
                      65, // Centra el botón horizontalmente
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), // Forma circular
                      primary: Colors.white, // Color de fondo
                      padding: EdgeInsets.all(20), // Padding del botón
                      elevation: 5, // Elevación del botón
                      side: BorderSide(
                        color: Color(0xFFE65C00), // Color del borde
                        width: 4.0, // Ancho del borde
                      ),
                    ),
                    child: Icon(
                      Icons.close,
                      color: Color(0xFFE65C00), // Color del icono
                      size: 30, // Tamaño del icono
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class BtnRedesSociales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white, // Fondo blanco
            borderRadius: BorderRadius.circular(50), // Bordes redondeados
            border: Border.all(color: Colors.blue, width: 1.0), // Borde azul
          ),
          child: IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: () {
              // Acción cuando se presiona el primer icono
            },
          ),
        ),
        SizedBox(width: 30), // Espacio entre los iconos
        Container(
          decoration: BoxDecoration(
            color: Colors.white, // Fondo blanco
            borderRadius: BorderRadius.circular(50), // Bordes redondeados
            border: Border.all(color: Colors.blue, width: 1.0), // Borde azul
          ),
          child: IconButton(
            icon: Icon(Icons.access_alarm),
            onPressed: () {
              AlertWidget.showAlert(context);
            },
          ),
        ),
        SizedBox(width: 30), // Espacio entre los iconos
        Container(
          decoration: BoxDecoration(
            color: Colors.white, // Fondo blanco
            borderRadius: BorderRadius.circular(50), // Bordes redondeados
            border: Border.all(color: Colors.blue, width: 1.0), // Borde azul
          ),
          child: IconButton(
            icon: Icon(Icons.access_time),
            onPressed: () {
              // Acción cuando se presiona el tercer icono
            },
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vidaomuerte/widgets/widget.dart';

class ubicacionScreen extends StatelessWidget {
  const ubicacionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Container(
              height: 400,
              margin: EdgeInsets.only(top: 25),
              child: Image.asset(
                'assets/imgmapa.png',
                fit: BoxFit.fill,
              ),
            ),

            // Otros widgets que desees en la pantalla
            // Muestra el mapa de Google Maps dentro del contenedor
            // Otros widgets que desees en la pantalla
/* 
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MapScreen()),
                  );
                },
                child: Text('Mostrar mapa'),
              ),
            ), */

            //text Newest Items
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                'Busca tu proximo auto por cercania',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text(
                'Ahora puedes buscar los auto que están más cercanos a un ubicación:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            boton_busqueda1(),
            boton_busqueda2(),

            BtnUbicacion()
          ],
        ),
        bottomNavigationBar: NavBar(currentRoute: 'ubicacion'));
  }
}

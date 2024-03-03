import 'package:flutter/material.dart';
import 'package:vidaomuerte/widgets/widget.dart';

class perfilScreen extends StatelessWidget {
  const perfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            //TARJETA INFORMACION PERSONAL
            TarjetaPerfil(),

            SizedBox(height: 20),

            //BOTON PUBLICAR
            botonPUBLICAR(),

            Container(
              margin: EdgeInsets.only(left: 10, top: 5),
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  'Tus publicaciones',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFF001996),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
        bottomNavigationBar: NavBar(currentRoute: 'perfil'));
  }
}

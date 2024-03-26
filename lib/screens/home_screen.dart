import 'package:flutter/material.dart';
import 'package:vidaomuerte/models/UserCreate.dart';
import 'package:vidaomuerte/widgets/widget.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class HomeScreens extends StatefulWidget {
/*   final UserCreate user; */
  const HomeScreens({
    super.key,
    /*  required this.user */
  });
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          // Establecer un tamaño máximo para el contenido
          constraints: BoxConstraints.expand(),
          child: Stack(
            children: <Widget>[
              // Contenido que se desplazará
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 100,
                  ), // Ajuste para evitar que los elementos se superpongan con el elemento fijo
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 300,
                      ),
                      //Search

                      //category
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: Padding(
                          padding: EdgeInsets.only(top: 20, left: 10),
                          child: Text(
                            'Categorias',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xFF001996),
                            ),
                          ),
                        ),
                      ),

                      //categoria de Widget
                      CategoriasWidget(),

                      //Popular items
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          'Tenemos Novedades',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xFF001996),
                          ),
                        ),
                      ),

                      //Newest Items widget
                      NewestItemswidget(),

                      //text Newest Items
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          'Nuestras Nuevas adquisisiciones',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xFF001996),
                          ),
                        ),
                      ),

                      //Popular items Widget
                      PopularItemsWidget(),
                    ],
                  ),
                ),
              ),
              // Elemento fijo en la parte superior

              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  child: Image.asset(
                    'assets/homecars.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Positioned(
                top: 240,
                left: 300,
                right: 0,
                child: Container(
                  width: 130, // Ancho del contenedor
                  height: 130, // Alto del contenedor
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, // Forma circular
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xFFE65C00), // Color del borde
                        width: 4.0, // Ancho del borde
                      ), // Color de fondo
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 5),
                        )
                      ]),
                ),
              ),
              Positioned(
                top: 250,
                left: 330,
                right: 30,
                child: Center(
                  child: Text(
                    'Stock 35 autos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF001996),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [boton_busqueda_home(), boton_home()],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavBar(currentRoute: 'home'));
  }
}

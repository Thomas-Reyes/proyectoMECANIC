import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final String currentRoute;

  const NavBar({Key? key, required this.currentRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: 90,
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        padding: EdgeInsets.all(2),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Home
              GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'home');
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.home_outlined,
                        color: currentRoute == 'home'
                            ? Color(0xFFE65C00)
                            : Colors.black,
                        size: 35,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight:
                                FontWeight.bold //pone las letras en negrita
                            ),
                      )
                    ],
                  )),

              // Ubicación
              GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'ubicacion');
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: currentRoute == 'ubicacion'
                            ? Color(0xFFE65C00)
                            : Colors.black,
                        size: 35,
                      ),
                      Text(
                        'Ubicación',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight:
                                FontWeight.bold //pone las letras en negrita
                            ),
                      )
                    ],
                  )),

              // Favoritos
              GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'favorito');
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: currentRoute == 'favorito'
                            ? Color(0xFFE65C00)
                            : Colors.black,
                        size: 35,
                      ),
                      Text(
                        'Favorito',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight:
                                FontWeight.bold //pone las letras en negrita
                            ),
                      )
                    ],
                  )),

              // Perfil
              GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'perfil');
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.person_pin_outlined,
                        color: currentRoute == 'perfil'
                            ? Color(0xFFE65C00)
                            : Colors.black,
                        size: 35,
                      ),
                      Text(
                        'Perfil',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight:
                                FontWeight.bold //pone las letras en negrita
                            ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TarjetaPerfil extends StatelessWidget {
  const TarjetaPerfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 400,
                height: 200,
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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(
                        'assets/perfil.png',
                      ),
                    ),

                    SizedBox(
                        width:
                            8), // Agregamos un espacio entre el icono y el texto
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Información personal',
                            style: TextStyle(
                              color: Color(0xFF001996),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Icon(
                                Icons.person_pin_outlined,
                                size: 20,
                                color: Color(0xFFE65C00),
                              ),
                              SizedBox(
                                  width:
                                      4), // Espacio entre el icono y el texto
                              Text('Alonso Martinez Valdenegro'),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.date_range_outlined,
                                size: 20,
                                color: Color(0xFFE65C00),
                              ),
                              SizedBox(width: 4),
                              Text('02/05/1994'),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.phone,
                                size: 20,
                                color: Color(0xFFE65C00),
                              ),
                              SizedBox(width: 4),
                              Text('+569 38462888'),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 20,
                                color: Color(0xFFE65C00),
                              ),
                              SizedBox(width: 4),
                              Text('Rafael Sotomayor  742,'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

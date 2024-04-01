import 'package:flutter/material.dart';
import 'package:vidaomuerte/widgets/widget.dart';

class PopularItemsWidget extends StatelessWidget {
  const PopularItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            for (int i = 0; i < 10; i++)
              //single item
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: 170,
                  height: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              // Imagen de fondo
                              Image.asset(
                                'assets/vitrina.png',
                                height: 130,
                              ),
                              // Icono superpuesto
                              Positioned(
                                //position icon
                                top: 5,
                                right: 5,
                                child: GestureDetector(
                                  onTap: () {
                                    // Acción que deseas realizar al hacer clic en el icono
                                  },
                                  child: Icon(
                                    Icons.favorite_border,
                                    size:
                                        30, // Ajusta el tamaño del icono según tus necesidades
                                    color: Colors
                                        .red, // Ajusta el color del icono según tus necesidades
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Mercedes Bens',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight:
                                  FontWeight.bold //pone las letras en negrita
                              ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.map,
                                size: 20,
                                color: Color(0xFFE65C00),
                              ),
                              Text('30.972km'),
                              SizedBox(width: 5),
                              Icon(
                                Icons.calendar_month,
                                size: 20,
                                color: Color(0xFFE65C00),
                              ),
                              Text('2021'),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.water_drop_outlined,
                                size: 20,
                                color: Color(0xFFE65C00),
                              ),
                              Text('Bencina'),
                              SizedBox(width: 18),
                              Icon(
                                Icons.settings_input_component,
                                size: 20,
                                color: Color(0xFFE65C00),
                              ),
                              Text('Manual'),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          ' \$ 13.855.926',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF001996),
                              fontWeight:
                                  FontWeight.bold //pone las letras en negrita
                              ),
                        ),
                        Text(
                          ' Desde \$128.489/mes ',
                          style: TextStyle(
                            fontSize: 12,
                            /*   fontWeight: FontWeight.bold */ //pone las letras en negrita
                          ),
                        ),
                        SizedBox(height: 15),
                        //button

                        botonContactar(),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

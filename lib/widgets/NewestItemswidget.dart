import 'package:flutter/material.dart';
import 'package:vidaomuerte/widgets/widget.dart';

class NewestItemswidget extends StatelessWidget {
  const NewestItemswidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(),
        child: Row(
          children: [
            for (int i = 0; i < 10; i++)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 15),
                  width: 380,
                  height: 220,
                  decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 4,
                          blurRadius: 2.5,
                          offset: Offset(0, 3),
                        ),
                      ]),
                  child: Row(
                    children: [
                      InkWell(
                        //buscar que significa,que hace y que incorporarle

                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Image.asset(
                                  'assets/vitrina2.png',
                                ),
                                Positioned(
                                    top: 5,
                                    right: 5,
                                    child: GestureDetector(
                                      onTap: () {
                                        // Acción que deseas realizar al hacer clic en el icono
                                        Navigator.pushNamed(
                                            context, 'informacionAuto');
                                      },
                                      child: Icon(
                                        Icons.favorite_border,
                                        size:
                                            25, // Ajusta el tamaño del icono según tus necesidades
                                        color: Color.fromARGB(255, 239, 57,
                                            25), // Ajusta el color del icono según tus necesidades
                                      ),
                                    ))
                              ]),
                        ),
                      ),
                      SizedBox(height: 18),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Text(
                              'Mercedes Bens',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight
                                      .bold //pone las letras en negrita
                                  ),
                            ),
                            SizedBox(height: 8),

                            Container(
                              child: Row(
                                children: [
                                  SizedBox(width: 2),
                                  Icon(
                                    Icons.map,
                                    size: 20,
                                    color: Color(0xFFE65C00),
                                  ),
                                  Text('30.972km'),
                                  SizedBox(width: 15),
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
                                  SizedBox(width: 20),
                                  Icon(
                                    Icons.water_drop_outlined,
                                    size: 20,
                                    color: Color(0xFFE65C00),
                                  ),
                                  Text('Bencina'),
                                  SizedBox(width: 30),
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
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF001996),
                                  fontWeight: FontWeight
                                      .bold //pone las letras en negrita
                                  ),
                            ),

                            Text(
                              '*Precio aplicado con nuestros',
                              style: TextStyle(
                                fontSize: 10,
                                /*   fontWeight: FontWeight.bold */ //pone las letras en negrita
                              ),
                            ),
                            Text(
                              'crédito directo.',
                              style: TextStyle(
                                fontSize: 10,
                                /*   fontWeight: FontWeight.bold */ //pone las letras en negrita
                              ),
                            ),

                            //button
                            botonContactar2(),
                          ],
                        ),
                      )
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

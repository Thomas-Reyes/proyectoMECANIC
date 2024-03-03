import 'package:flutter/material.dart';
import 'package:image_carousel_gallery/image_carousel_gallery.dart';
import 'package:vidaomuerte/widgets/widget.dart';

class informacionAuto extends StatelessWidget {
  const informacionAuto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 5),
          child: ListView(children: [
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      'Caracteristicas',
                      style: TextStyle(
                        color: Color(0xFF001FBC),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Maxus T60',
                      style: TextStyle(
                        color: Color(0xFF001FBC),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //imagenes del carrusel
            ImageCarouselWithGrid(
              images: [
                'assets/descripcion3.png',
                'assets/descripcion4.png',
                'assets/descripcion2.png',
                'assets/descripcion1.png',
                'assets/autodetalle.png',
              ],
            ),

            //text informacion
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text(
                'Informacion del auto',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            //iconos
            SizedBox(height: 10),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.ac_unit_rounded, size: 25),
                  Text('Bencina'),
                  SizedBox(width: 18),
                  Icon(Icons.ac_unit_rounded, size: 25),
                  Text('Manual'),
                  SizedBox(width: 18),
                  Icon(Icons.ac_unit_rounded, size: 25),
                  Text('30.972km'),
                  SizedBox(width: 18),
                  Icon(Icons.ac_unit_rounded, size: 25),
                  Text('2021'),
                  SizedBox(width: 18),
                ],
              ),
            ),
            //texto informativo
            Container(
              margin: EdgeInsets.all(5),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text(
                      'Este vehículo es la elección ideal para quienes valoran el estilo y la comodidad en cada trayecto. En excelente estado, su diseño y prestaciones ofrecen una experiencia de conducción incomparable. Cada viaje se transforma en un placer gracias a su excepcional confort y suave conducción.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            //posible card de caracteristicas
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text(
                'Caracteristicas',
                style: TextStyle(
                  color: Color(0xFF001FBC),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Table(
                columnWidths: const {
                  0: FlexColumnWidth(),
                  1: FlexColumnWidth(),
                },
                children: [
                  //Caracteristicas Generales
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Generales:',
                          style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(' '),
                      ),
                    ],
                  ),
                  //marca del auto
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Dato 3'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Dato 4'),
                      ),
                    ],
                  ),
                  //version del auto
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Versión:'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('D20 GLX 4X4 AT'),
                      ),
                    ],
                  ),
                  //año del auto
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Año'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('2023'),
                      ),
                    ],
                  ),
                  //combustible
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Combustible'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Diesel'),
                      ),
                    ],
                  ),
                  //kilometraje
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Kilometraje'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('245'),
                      ),
                    ],
                  ),
                  //transmision
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Transmisión: '),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Automatica'),
                      ),
                    ],
                  ),
                  //carroceria
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Carrocería: '),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Pickup'),
                      ),
                    ],
                  ),
                  //color
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Color: '),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Azul metalizado'),
                      ),
                    ],
                  ),
                  //llaves de repuesto
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Llaves de  repuesto:'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Si'),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(' '),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(' '),
                      ),
                    ],
                  ),

                  //confort
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Confort',
                          style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(' '),
                      ),
                    ],
                  ),
                  //climatizacion
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Climatización: '),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Si'),
                      ),
                    ],
                  ),
                  //suspencion
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Suspensión: '),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Si'),
                      ),
                    ],
                  ),
                  //radio
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Radio: '),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Si'),
                      ),
                    ],
                  ),
                  //pantalla tactil
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Pantalla táctil: '),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('si'),
                      ),
                    ],
                  ),
                  //conexion bluetooh
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Conexión Bluetooth: '),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('si'),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //informacion del vendedor

            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                'Informacion del Vendedor',
                style: TextStyle(
                  color: Color(0xFF001FBC),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Table(
                    columnWidths: const {
                      0: FlexColumnWidth(),
                      1: FlexColumnWidth(),
                    },
                    children: [
                      // datos  del vendedor
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.person),
                                SizedBox(width: 8),
                                Text('Nombre del vendedor:'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Matías Salgado'),
                          ),
                        ],
                      ),
                      // Tipo de transmisión
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.settings),
                                SizedBox(width: 8),
                                Text('Tipo de transmisión:'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Manual'),
                          ),
                        ],
                      ),
                      // Kilometraje
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.directions_car),
                                SizedBox(width: 8),
                                Text('Kilometraje:'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('30.972km'),
                          ),
                        ],
                      ),
                      // Año del vehículo
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.calendar_today),
                                SizedBox(width: 8),
                                Text('Año del vehículo:'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('2021'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //boton de contactar
            botonContactar(),

            SizedBox(height: 15),
            //texto final
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  ' *La forma de contactar al vendedor es directo por whatsapp. ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
          ]),
        ),
        bottomNavigationBar: NavBar(currentRoute: 'home'));
  }
}

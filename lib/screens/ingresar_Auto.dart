import 'package:flutter/material.dart';
import 'package:vidaomuerte/widgets/widget.dart';

class StyledCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final Color activeColor;
  final Color checkColor;

  const StyledCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
    this.activeColor = Colors.orange,
    this.checkColor = Colors.white,
  }) : super(key: key);

  @override
  _StyledCheckboxState createState() => _StyledCheckboxState();
}

class _StyledCheckboxState extends State<StyledCheckbox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChanged!(!widget.value);
      },
      child: Container(
        width: 24.0,
        height: 24.0,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFE65C00)),
          borderRadius: BorderRadius.circular(4.0),
          color: widget.value ? widget.activeColor : Colors.transparent,
        ),
        child: widget.value
            ? Icon(Icons.check, size: 18.0, color: widget.checkColor)
            : null,
      ),
    );
  }
}

class DropdownButtonWidget extends StatefulWidget {
  @override
  _DropdownButtonWidgetState createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  String? _selectedBrand;
  String? _selectedVersion;
  String? _selectedYear;
  String? _selectedTransmission;

  List<String> _carBrands = [
    'Selecciona la marca del auto',
    'Toyota',
    'Honda',
    'Ford',
    'Chevrolet',
    'Nissan',
    'Volkswagen',
    'BMW',
    'Mercedes-Benz',
    'Audi',
    'Hyundai',
  ];

  List<String> _carVersions = [
    'Selecciona la versión del auto',
    'Sedán',
    'Hatchback',
    'SUV',
    'Coupé',
    'Pickup',
    'Convertible',
    'Minivan',
    'Furgoneta',
    'Camioneta',
  ];

  List<String> _carYears = [
    'Selecciona el año',
    '2022',
    '2021',
    '2020',
    '2019',
    '2018',
    '2017',
    '2016',
    '2015',
    '2014',
  ];

  List<String> _carTransmissions = [
    'Selecciona la transmisión',
    'Automática',
    'Manual',
    'CVT',
    'Semi-automática',
  ];
  bool _carroceriaSelected = false;
  bool _climatizacionSelected = false;
  bool _suspensionSelected = false;
  bool _radioSelected = false;
  bool _pantallaTactilSelected = false;
  bool _bluetoothSelected = false;
  //
  bool _publicarLetreroSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    //texto Descripción del auto:
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Padding(
                        padding: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          'agregar el primer titulo y los contenedores para subir la imagen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),

                    //texto Descripción del auto:
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Padding(
                        padding: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          'Descripción del auto:',
                          style: TextStyle(
                            color: Color(0xFF001996),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    //input de descripcion
                    Container(
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.orange,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'ingrese la descripcion del auto',
                          border: InputBorder
                              .none, // Remove border around the input field
                        ),
                      ),
                    ),
                    //texto de confot
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Padding(
                        padding: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          'Confort de Auto',
                          style: TextStyle(
                            color: Color(0xFF001996),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Padding(
                        padding: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          '* Generales',
                          style: TextStyle(
                            color: Color(0xFF001996),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      //optionbuton 1
                      padding: EdgeInsets.all(
                          10), // Añade un espacio interior alrededor del contenedor
                      decoration: BoxDecoration(
                        border: Border.all(
                            color:
                                Colors.orange), // Añade un borde al contenedor
                        borderRadius: BorderRadius.circular(
                            10), // Añade esquinas redondeadas al contenedor
                      ),
                      child: DropdownButton<String>(
                        value: _selectedBrand,
                        hint: Text('Selecciona la marca del auto'),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedBrand = newValue;
                          });
                        },
                        items: _carBrands
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 20),
                    //optionbuton 2
                    Container(
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      padding: EdgeInsets.all(
                          10), // Añade un espacio interior alrededor del contenedor
                      decoration: BoxDecoration(
                        border: Border.all(
                            color:
                                Colors.orange), // Añade un borde al contenedor
                        borderRadius: BorderRadius.circular(10),
                        // Añade esquinas redondeadas al contenedor
                      ),

                      child: DropdownButton<String>(
                        value: _selectedVersion,
                        hint: Text('Version de vehiculo'),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedVersion = newValue;
                          });
                        },
                        items: _carVersions
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 20),
                    //optionbuton 3
                    Container(
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      padding: EdgeInsets.all(
                          10), // Añade un espacio interior alrededor del contenedor
                      decoration: BoxDecoration(
                        border: Border.all(
                            color:
                                Colors.orange), // Añade un borde al contenedor
                        borderRadius: BorderRadius.circular(
                            10), // Añade esquinas redondeadas al contenedor
                      ),
                      child: DropdownButton<String>(
                        value: _selectedYear,
                        hint: Text(
                          'Selecciona el año',
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedYear = newValue;
                          });
                        },
                        items: _carYears
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 20),
                    //optionbuton 4
                    Container(
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      padding: EdgeInsets.all(
                          10), // Añade un espacio interior alrededor del contenedor
                      decoration: BoxDecoration(
                        border: Border.all(
                            color:
                                Colors.orange), // Añade un borde al contenedor
                        borderRadius: BorderRadius.circular(
                            10), // Añade esquinas redondeadas al contenedor
                      ),
                      child: DropdownButton<String>(
                        value: _selectedTransmission,
                        hint: Text('Selecciona la transmisión'),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedTransmission = newValue;
                          });
                        },
                        items: _carTransmissions
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                //input 1
                Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  padding: EdgeInsets.all(
                      10), // Añade un espacio interior alrededor del contenedor
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.orange), // Añade un borde al contenedor
                    borderRadius: BorderRadius.circular(
                        10), // Añade esquinas redondeadas al contenedor
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Escribe el color del auto',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 10),

                //input 2
                Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  padding: EdgeInsets.all(
                      10), // Añade un espacio interior alrededor del contenedor
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.orange), // Añade un borde al contenedor
                    borderRadius: BorderRadius.circular(
                        10), // Añade esquinas redondeadas al contenedor
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '  Escribe el kilometraje ',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                //Checkbox

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Carrocería'),
                    StyledCheckbox(
                      value: _carroceriaSelected,
                      onChanged: (bool? value) {
                        setState(() {
                          _carroceriaSelected = value!;
                        });
                      },
                    ),
                    Text('Sí'),
                    StyledCheckbox(
                      value: !_carroceriaSelected,
                      onChanged: (bool? value) {
                        setState(() {
                          _carroceriaSelected = !(value ?? false);
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 20),

                // TEXTO DE CONTENEDOR CHETBOX
                Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, left: 10),
                    child: Text(
                      '* Confort del auto',
                      style: TextStyle(
                        color: Color(0xFF001996),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Container(
                  child: Column(
                    children: [
                      // Checkbox 1
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Climatización:          '),
                          StyledCheckbox(
                            value: _climatizacionSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                _climatizacionSelected = value!;
                                if (_climatizacionSelected) {
                                  _climatizacionSelected = true;
                                }
                              });
                            },
                          ),
                          Text('Sí'),
                          StyledCheckbox(
                            value: !_climatizacionSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                _climatizacionSelected = !(value ?? false);
                              });
                            },
                          ),
                          Text('No'),
                        ],
                      ),
                      SizedBox(height: 10),
                      // Checkbox 2
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Suspensión:             '),
                          StyledCheckbox(
                            value: _suspensionSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                _suspensionSelected = value!;
                                if (_suspensionSelected) {
                                  _suspensionSelected = true;
                                }
                              });
                            },
                          ),
                          Text('Sí'),
                          StyledCheckbox(
                            value: !_suspensionSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                _suspensionSelected = !(value ?? false);
                              });
                            },
                          ),
                          Text('No'),
                        ],
                      ),
                      SizedBox(height: 10),
                      // Checkbox 3
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Radio:                      '),
                          StyledCheckbox(
                            value: _radioSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                _radioSelected = value!;
                                if (_radioSelected) {
                                  _radioSelected = true;
                                }
                              });
                            },
                          ),
                          Text('Sí'),
                          StyledCheckbox(
                            value: !_radioSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                _radioSelected = !(value ?? false);
                              });
                            },
                          ),
                          Text('No'),
                        ],
                      ),
                      SizedBox(height: 10),
                      // Checkbox 4
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Pantalla táctil:          '),
                          StyledCheckbox(
                            value: _pantallaTactilSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                _pantallaTactilSelected = value!;
                                if (_pantallaTactilSelected) {
                                  _pantallaTactilSelected = true;
                                }
                              });
                            },
                          ),
                          Text('Sí'),
                          StyledCheckbox(
                            value: !_pantallaTactilSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                _pantallaTactilSelected = !(value ?? false);
                              });
                            },
                          ),
                          Text('No'),
                        ],
                      ),
                      SizedBox(height: 10),
                      // Checkbox 5
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Conexión Bluetooth:'),
                          StyledCheckbox(
                            value: _bluetoothSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                _bluetoothSelected = value!;
                                if (_bluetoothSelected) {
                                  _bluetoothSelected = true;
                                }
                              });
                            },
                          ),
                          Text('Sí'),
                          StyledCheckbox(
                            value: !_bluetoothSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                _bluetoothSelected = !(value ?? false);
                              });
                            },
                          ),
                          Text('No'),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),

                // texto de letrero

                Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, left: 10),
                    child: Text(
                      'Selecciona un letrero para tu auto:',
                      style: TextStyle(
                        color: Color(0xFF001996),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),

                //tarjeta de letreros
                Container(child: ContainerExample()),

                //chetbox Publicar sin letrero
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StyledCheckbox(
                      value: _publicarLetreroSelected,
                      onChanged: (bool? value) {
                        setState(() {
                          _publicarLetreroSelected = value!;
                        });
                      },
                    ),
                    Text('Publicar sin letrero    '),
                  ],
                ),
                SizedBox(height: 20),

                // texto de indicar precio
                Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, left: 10),
                    child: Text(
                      'Indica el precio de venta de tu auto:',
                      style: TextStyle(
                        color: Color(0xFF001996),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orange,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'ingrese el valor del auto',
                      border: InputBorder
                          .none, // Remove border around the input field
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 243, 135, 33),
                        Color.fromARGB(255, 243, 135, 33)
                      ],
                    ),
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
                      onTap: () {},
                      borderRadius: BorderRadius.circular(30),
                      child: Center(
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
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
        bottomNavigationBar: NavBar(currentRoute: 'perfil'));
  }
}

import 'package:vidaomuerte/models/SubirAuto.dart';
import 'package:vidaomuerte/models/SubirAuto_Erorr.dart';
import 'package:vidaomuerte/services/SubirAutoService.dart';
import 'package:vidaomuerte/utils/isColorValid.dart';
import 'package:vidaomuerte/utils/isKilometrajeValid.dart';
import 'package:vidaomuerte/utils/isPrecioValid.dart';
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
          border: Border.all(color: const Color(0xFFE65C00)),
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
  final int profile;
  const DropdownButtonWidget({Key? key, this.profile = 0}) : super(key: key);
  @override
  _DropdownButtonWidgetState createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  bool _carroceriaSelected = false;
  bool _climatizacionSelected = false;
  bool _suspensionSelected = false;
  bool _radioSelected = false;
  bool _pantallaTactilSelected = false;
  bool _bluetoothSelected = false;
  bool _publicarLetreroSelected = false;

  final TextEditingController _descripcion = TextEditingController(
      text: 'es un vehículo motorizado con ruedas utilizado');
  final TextEditingController _precio = TextEditingController(text: '1200552');
  final TextEditingController _kilometraje =
      TextEditingController(text: '45874');
  final TextEditingController _colorAuto = TextEditingController(text: 'Azul');

  List<String> carBrands = [
    '',
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

  List<String> carVersions = [
    '',
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

  List<String> carYears = [
    '',
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
  final List<String> carConbustible = [
    '',
    'Diésel',
    'Gasolina',
    'Gas Licuado del Petróleo',
    'Gas Natural Comprimido',
    'Biocombustibles',
  ];
  List<String> carTransmissions = [
    '',
    'Automática',
    'Manual',
    'CVT',
    'Semi-automática',
  ];
  String? selectedBrand;
  String? selectedVersion;
  String? selectedYear;
  String? selectedTransmission;
  String? selectedConbustible;

  final createVehiculoService = SubirAutoService();

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
                      margin: const EdgeInsets.symmetric(vertical: 15),
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

                    //dropbuton 1
                    Container(
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButton<String>(
                        value: selectedBrand,
                        hint: Text('Selecciona la marca del auto'),
                        onChanged: (String? newValue) {
                          if (newValue != null && newValue.isNotEmpty) {
                            setState(() {
                              selectedBrand = newValue;
                            });
                          }
                        },
                        items: carBrands
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),

                    SizedBox(height: 20),
                    //dropbuton 2
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
                        value: selectedVersion,
                        hint: Text('Version de vehiculo'),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedVersion = newValue!;
                          });
                        },
                        items: carVersions
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 20),
                    //dropbuton 3
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
                        value: selectedYear,
                        hint: Text(
                          'Selecciona el año',
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedYear = newValue!;
                          });
                        },
                        items: carYears
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 20),

                    //dropbuton 4
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: double.infinity,
                      padding: const EdgeInsets.all(
                          10), // Añade un espacio interior alrededor del contenedor
                      decoration: BoxDecoration(
                        border: Border.all(
                            color:
                                Colors.orange), // Añade un borde al contenedor
                        borderRadius: BorderRadius.circular(
                            10), // Añade esquinas redondeadas al contenedor
                      ),
                      child: DropdownButton<String>(
                        value: selectedConbustible,
                        hint: const Text('Selecciona el conbustible del auto'),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedConbustible = newValue!;
                          });
                        },
                        items: carConbustible
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),

                    SizedBox(height: 20),
                    //dropbuton 5
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
                        value: selectedTransmission,
                        hint: Text('Selecciona la transmisión'),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedTransmission = newValue!;
                          });
                        },
                        items: carTransmissions
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
                  margin: const EdgeInsets.all(10),
                  width: double.infinity,
                  padding: const EdgeInsets.all(
                      10), // Añade un espacio interior alrededor del contenedor
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.orange), // Añade un borde al contenedor
                    borderRadius: BorderRadius.circular(
                        10), // Añade esquinas redondeadas al contenedor
                  ),
                  child: TextField(
                    controller: _colorAuto,
                    decoration:
                        InputDecoration(labelText: 'ingrese color del auto'),
                  ),
                ),
                SizedBox(height: 10),

                //input 2
                Container(
                  margin: const EdgeInsets.all(10),
                  width: double.infinity,
                  padding: const EdgeInsets.all(
                      10), // Añade un espacio interior alrededor del contenedor
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.orange), // Añade un borde al contenedor
                    borderRadius: BorderRadius.circular(
                        10), // Añade esquinas redondeadas al contenedor
                  ),
                  child: TextField(
                    controller: _kilometraje,
                    decoration:
                        InputDecoration(labelText: 'ingrese kilometraje'),
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

                Column(
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
                ContainerExample(),

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

                ElevatedButton(
                    onPressed: () async {
                      //inputs text
                      String descripcion = _descripcion.text;
                      String color = _colorAuto.text;
                      //inputs int
                      int kilometraje = int.parse(_kilometraje.text);
                      int precio = int.parse(_precio.text);

                      //Checkbox
                      bool? carroceria = _carroceriaSelected;
                      bool? climatizacion = _climatizacionSelected;
                      bool? suspension = _suspensionSelected;
                      bool? radio = _radioSelected;
                      bool? pantallaTactil = _pantallaTactilSelected;
                      bool? bluetooth = _bluetoothSelected;
                      bool? publicarLetrero = _publicarLetreroSelected;

                      //DropdownButton
                      String brand = selectedBrand!;
                      // ignore: non_constant_identifier_names
                      String Version = selectedVersion!;
                      // ignore: non_constant_identifier_names
                      String Year = selectedYear!;
                      String combustible = selectedConbustible!;
                      // ignore: non_constant_identifier_names
                      String Transmission = selectedTransmission!;

                      //color
                      if (!isColorValid(color)) {
                        mostrarErrorConSnackBar(
                            context, 'Datos incorrectos de color,solo letras');
                        return;
                      }
                      //descripcion
                      /*   if (!isDescripcionValid(descripcion)) {
                        mostrarErrorConSnackBar(context,
                            'Datos incorrectos de descripcion,solo letras');
                        return;
                      } */
                      //kilometraje
                      /*  if (iskilometrajeValid(kilometraje as String)) {
                        mostrarErrorConSnackBar(context,
                            'Datos incorrectos de kilometraje,solo numeros');
                        return;
                      } */
                      if (!iskilometrajeValid(kilometraje.toString())) {
                        mostrarErrorConSnackBar(context,
                            'Datos incorrectos de kilometraje, solo números válidos.');
                        return;
                      }
                      //precio
                      if (!isPrecioValid(precio.toString())) {
                        mostrarErrorConSnackBar(context,
                            'Datos incorrectos de precio, solo números válidos.');
                        return;
                      }

                      //Contacto

                      Object response =
                          await createVehiculoService.crearSubirAuto(
                              descripcion,
                              color as bool,
                              kilometraje as bool,
                              precio as String,
                              carroceria as int, //no es int
                              climatizacion,
                              suspension as String,
                              radio as String,
                              pantallaTactil,
                              bluetooth as String,
                              publicarLetrero,
                              brand as bool,
                              Version,
                              Year as bool,
                              combustible as int, //no es int
                              Transmission as int, //no es int
                              widget.profile);

                      //create_contacto

                      print(response);
                      //quede en la de mostrar mensaje por snackbar minuto 11:28 video 3

                      if (response is SubirAuto) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const perfilScreen()));
                        return;
                      }
                      if (response is SubirAuto_Erorr)
                      //mostrarErrorConSnackBar(context, response.message);//alerta de error con snackbar

                      //alerta de error con AlertDialog
                      {
                        /*  mostrarErrorConAlertDialog(
                            context, "Error de inicio de sesión"); */
                        mostrarErrorConSnackBar(context, response.message);
                        return;
                      }
                      print((message: 'Error pero pase'));
                      // ignore: use_build_context_synchronously
                      mostrarErrorConAlertDialog(context, 'Error inesperado');
                    },
                    child: Text('Crear Perfil')),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
        bottomNavigationBar: NavBar(currentRoute: 'perfil'));
  }
}

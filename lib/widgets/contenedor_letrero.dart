import 'package:flutter/material.dart';

class ContainerExample extends StatefulWidget {
  @override
  _ContainerExampleState createState() => _ContainerExampleState();
}

class _ContainerExampleState extends State<ContainerExample> {
  int _selectedIndex = -1;

  List<String> imagePaths = [
    'assets/letreroAZUL.png',
    'assets/letreroGRIS.png',
    'assets/letreroROJO.png', // Ruta de la tercera imagen
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        children: [
          _buildContainer(0),
          SizedBox(width: 5),
          _buildContainer(1),
          SizedBox(width: 5),
          _buildContainer(2),
        ],
      ),
    );
  }

  Widget _buildContainer(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // Si el contenedor ya está activado, desactívalo
          if (_selectedIndex == index) {
            _selectedIndex = -1;
          } else {
            _selectedIndex = index; // Activa el contenedor
          }
        });
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: _selectedIndex == index ? Color(0xFFE65C00) : Colors.black,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePaths[index], // Usa la ruta de la imagen según el índice
              width: 92,
              height: 92,
            ),
          ],
        ),
      ),
    );
  }
}

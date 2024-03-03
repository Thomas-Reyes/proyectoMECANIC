import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Image.asset(
        'assets/autorojo.png',
        fit: BoxFit.cover,
      ),
      height: size.height * 0.45,
      width: size.width,
      color: Color.fromARGB(255, 54, 181, 244),
    );
  }
}

class AutoVitrina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Image.asset(
        'assets/autorojo.png',
        fit: BoxFit.cover,
      ),
      height: size.height * 0.1,
      width: size.width,
      color: Color.fromARGB(255, 54, 181, 244),
    );
  }
}

class imgMapa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      child: Image.asset(
        'assets/imgmapa.png',
        fit: BoxFit.cover,
      ),
      height: size.height * 0.5,
      decoration: BoxDecoration(
          color: Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
    );
  }
}

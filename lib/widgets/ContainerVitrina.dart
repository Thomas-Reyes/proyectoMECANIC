import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;

  const CustomCard({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 230.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 200, 38, 38),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: child,
        ),
      ),
    );
  }
}

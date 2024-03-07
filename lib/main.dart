import 'package:flutter/material.dart';

import 'screens/crear_Perfil.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
/*   const MyApp({super.key}); */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'CrearUsuario',
        routes: {
          //
          'inicio': (_) => onboarding_Screens(),
          //
          'login': (_) => LoginScreen(),
          'CrearUsuario': (_) => CrearUser(),
          //
          'CrearPerfil': (_) => CrearPerfil(),
          //
          'RecuperarCuenta': (_) => RecuperarCuenta(),
          //
          'informacionAuto': (_) => informacionAuto(),
          'ingresarAuto': (_) => DropdownButtonWidget(),
          //
          'home': (_) => HomeScreens(),
          'ubicacion': (_) => ubicacionScreen(),
          'favorito': (_) => favoriteScreen(),
          'perfil': (_) => perfilScreen(),
        });
  }
}

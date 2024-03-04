import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
/*   const MyApp({super.key}); */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          //
          'inicio': (_) => onboarding_Screens(),
          //
          'login': (_) => LoginScreen(),
          'CrearUsuario': (_) => CrearUsuario(),
          'RecuperarCuenta': (_) => RecuperarCuenta(),
          //
          'informacionAuto': (_) => informacionAuto(),
          'ingresarAuto': (_) => DropdownButtonWidget(),
          //
          /* 'vitrina': (_) => vitrinaHome(), */
          //
          'home': (_) => HomeScreens(),
          'ubicacion': (_) => ubicacionScreen(),
          'favorito': (_) => favoriteScreen(),
          'perfil': (_) => perfilScreen(),
        });
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vidaomuerte/models/user.dart';

import '../models/userErorr.dart';

class CrearUserService {
  Future<Object> createUsuario(String email, String password) async {
    //se define el header
    Map<String, String> headers = {'Content-Type': 'application/json'};

    //se define el URL
    final Uri url = Uri.parse(
        'https://proyet-personal-clase1-backend-dev-dccm.4.us-1.fl0.io/api/auth/local'); //consultar de donde se saca esta url, si es la de postman

    //se define cuerpo del body
    /*    final String body = json.encode({
  "nombre": nombre,
  "rut": rut,
  "correo": correo,
  "fechaNacimiento": fechaNacimiento.toIso8601String(),
  "direccion": direccion,
  "comuna": comuna,
  "numeroTelefono": numeroTelefono,
});
 */
    try {
      final response = await http.post(
        url,
        headers: headers, /* body: body */
      );
      /*  print(response.statusCode); para ver el estado en consola */

      final data = json.decode(response.body);
      /*  print(data); para ver su respuesta en consola */

      //logica de retorno
      if (response.statusCode == 200) {
        return User.fromJson(
            data); // 'User' sale de la clase User del modelo Usuario valido
      } else {
        return UserErorr.fromJson(data);
      } // 'UserErorr' sale de la clase User del modelo UserErorr invalido
    } catch (e) {
      return UserErorr(status: '500', message: 'Error de red');
    }
  }
}

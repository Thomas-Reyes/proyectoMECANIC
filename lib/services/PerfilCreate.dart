import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vidaomuerte/models/PerfilCreate.dart';
import '../models/PerfilCreate_Erorr.dart';

//agregar rut-telefono-comuna-direccion-fecha de nacimiento
class PerfilService {
  Future<Object> createPerfil(String nombreApellido, String rut, String fecha,
      String direccion, String comuna, int contacto, int user) async {
    //nose si va el dato de user
    //se define el header
    Map<String, String> headers = {'Content-Type': 'application/json'};

    //se define el URL
    final Uri url = Uri.parse(
        'https://proyet-personal-clase1-backend-dev-dccm.4.us-1.fl0.io/api/profiles');

    //se define cuerpo del body
    final String body = json.encode({
      "data": {
        "nombreApellido": nombreApellido,
        "rut": rut,
        "fecha": fecha,
        "direccion": direccion,
        "comuna": comuna,
        "contacto": contacto,
        "user": user
      }
    });

    try {
      final response = await http.post(url, headers: headers, body: body);
      /*  print(response.statusCode); para ver el estado en consola */

      final data = json.decode(response.body);
      /*  print(data); para ver su respuesta en consola */
      print(data);
      print(response.statusCode);
      //logica de retorno
      if (response.statusCode == 200) {
        return PerfilCreate.fromJson(
            data); // 'User' sale de la clase User del modelo Usuario valido
      } else {
        print((data, message: 'Error de algo raro'));
        return PerfilCreate_Erorr.fromJson(data);
      } // 'UserErorr' sale de la clase User del modelo UserErorr invalido
    } catch (e) {
      print((message: 'Error de algo raro2'));
      return PerfilCreate_Erorr(status: '500', message: 'Error de red');
    }
  }
}

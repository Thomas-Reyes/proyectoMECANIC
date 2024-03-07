import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vidaomuerte/models/PerfilCreate.dart';
import '../models/PerfilCreate_Erorr.dart';

//agregar rut-telefono-comuna-direccion-fecha de nacimiento
class PerfilService {
  Future<Object> createPerfil(String nombreApellido, String comuna,
      String contacto, String rut, String fecha, String direccion) async {
    //se define el header
    Map<String, String> headers = {'Content-Type': 'application/json'};

    //se define el URL
    final Uri url = Uri.parse(
        'https://proyet-personal-clase1-backend-dev-dccm.4.us-1.fl0.io/api/users');

    //se define cuerpo del body
    final String body = json.encode({
      "nombreApellido": nombreApellido,
      "rut": rut,
      "fecha": fecha,
      "direccion": direccion,
      "comuna": comuna,
      "contacto": contacto,
    });

    try {
      final response = await http.post(url, headers: headers, body: body);
      /*  print(response.statusCode); para ver el estado en consola */

      final data = json.decode(response.body);
      /*  print(data); para ver su respuesta en consola */

      //logica de retorno
      if (response.statusCode == 200) {
        return PerfilCreate.fromJson(
            data); // 'User' sale de la clase User del modelo Usuario valido
      } else {
        return PerfilCreate_Erorr.fromJson(data);
      } // 'UserErorr' sale de la clase User del modelo UserErorr invalido
    } catch (e) {
      return PerfilCreate_Erorr(status: '500', message: 'Error de red');
    }
  }
}

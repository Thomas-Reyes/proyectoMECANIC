import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vidaomuerte/models/LoginConfirm.dart';
import 'package:vidaomuerte/models/LoginConfirm_Erorr.dart';

class LoginService {
  Future<Object> Login(
    String email,
    String password,
  ) async {
    //se define el header
    Map<String, String> headers = {'Content-Type': 'application/json'};

    //se define el URL
    final Uri url = Uri.parse(
        'https://proyet-personal-clase1-backend-dev-dccm.4.us-1.fl0.io/api/auth/local');

    //se define cuerpo del body
    final String body = json.encode({
      "identifier": email,
      "password": password,
    });

    try {
      final response = await http.post(url, headers: headers, body: body);
      /*  print(response.statusCode); para ver el estado en consola */

      final data = json.decode(response.body);
      /*  print(data); para ver su respuesta en consola */

      //logica de retorno
      if (response.statusCode == 200) {
        return LoginConfirm.fromJson(
            data); // 'User' sale de la clase User del modelo Usuario valido
      } else {
        return LoginConfirm_Erorr.fromJson(data);
      } // 'UserErorr' sale de la clase User del modelo UserErorr invalido
    } catch (e) {
      return LoginConfirm_Erorr(status: '500', message: 'Error de red');
    }
  }
}

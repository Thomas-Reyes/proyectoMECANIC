import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vidaomuerte/models/UserCreate.dart';
import 'package:vidaomuerte/models/UserCreate_Erorr.dart';

import '../models/PerfilCreate_Erorr.dart';

//quede en el minuto 18 del ultimo video

class UserService {
  Future<Object> createUser(
    String email,
    String password,
  ) async {
    //se define el header
    Map<String, String> headers = {'Content-Type': 'application/json'};

    //se define el URL
    final Uri url = Uri.parse(
        'https://proyet-personal-clase1-backend-dev-dccm.4.us-1.fl0.io/api/users');

    //se define cuerpo del body
    final String body = json.encode(
        {"username": email, "email": email, "password": password, "role": 1});

    try {
      final response = await http.post(url, headers: headers, body: body);
      /*  print(response.statusCode); para ver el estado en consola */

      final data = json.decode(response.body);
      /*  print(data); para ver su respuesta en consola */
      print(data);
      print(response.statusCode);
      //logica de retorno
      if (response.statusCode == 201) {
        print('pase');
        return UserCreate.fromJson(
            data); // 'User' sale de la clase User del modelo Usuario valido
      } else {
        return UserCreate_Erorr(status: '501', message: 'Error de red');
      } // 'UserErorr' sale de la clase User del modelo UserErorr invalido
    } catch (e) {
      return UserCreate_Erorr(status: '502', message: 'Error de red');
    }
  }
}

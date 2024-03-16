import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vidaomuerte/models/Carros.dart';

//quede en el minuto 5:55
class MostrarAutosService {
  Future<Carros> mostrarTodosLosAutos() async {
    //se define el header
    Map<String, String> headers = {'Content-Type': 'application/json'};

    //se define el URL
    final Uri url = Uri.parse(
        'https://proyet-personal-clase1-backend-dev-dccm.4.us-1.fl0.io/api/cargar-autos');

    try {
      final response = await http.get(url, headers: headers);
      /*  print(response.statusCode); para ver el estado en consola */

      final data = json.decode(response.body);
      /*  print(data); para ver su respuesta en consola */
      print(data);
      print(response.statusCode);
      //logica de retorno
      if (response.statusCode == 200) {
        return Carros.fromJson(
            data); // 'User' sale de la clase User del modelo Usuario valido
      } else {
        return Carros(carros: []); //lista vacia
      } // 'UserErorr' sale de la clase User del modelo UserErorr invalido
    } catch (e) {
      return Carros(carros: []); //lista vacia
    }
  }
}

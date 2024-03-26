import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vidaomuerte/models/Carros.dart';
import 'package:vidaomuerte/models/PerfilCreate.dart';
import 'package:vidaomuerte/models/SubirAuto_Erorr.dart';

//agregar rut-telefono-comuna-direccion-fecha de nacimiento
class CarsService {
  Future<Cars> getAllCars() async {
    //se define el header
    final Map<String, String> headers = {'Content-Type': 'application/json'};

    final Uri url = Uri.parse(//se define el URL
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
        return Cars.fromJson(
            data); // 'User' sale de la clase User del modelo Usuario valido
      }
      print((data, message: 'Error de algo raro'));
      return Cars(cars: []);
      // 'UserErorr' sale de la clase User del modelo UserErorr invalido
    } catch (e) {
      return Cars(cars: []);
    }
  }
}

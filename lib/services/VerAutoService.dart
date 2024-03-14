import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vidaomuerte/models/PerfilCreate.dart';
import 'package:vidaomuerte/models/SubirAuto_Erorr.dart';

//agregar rut-telefono-comuna-direccion-fecha de nacimiento
class SubirAutoService {
  Future<Object> crearSubirAuto(
      String descripcionAuto,
      bool pantallaTactil,
      bool conexionBluetooth,
      String ColorAuto,
      int Kilometraje,
      bool publicarSinLetrero,
      String seleccionarMarca,
      String seleccionaTransmicion,
      bool Suspension,
      String selcecionaVersion,
      bool llavesRepuesto,
      bool radio,
      String selccionaCombustible,
      bool climatizacion,
      int selcecionaPeriodo,
      int valorAuto,
      int profiles) async {
    //nose si va el dato de user
    //se define el header
    Map<String, String> headers = {'Content-Type': 'application/json'};

    //se define el URL
    final Uri url = Uri.parse(
        'https://proyet-personal-clase1-backend-dev-dccm.4.us-1.fl0.io/api/profiles');

    //se define cuerpo del body
    final String body = json.encode({
      "data": {
        "Kilometraje": Kilometraje,
        "publicarSinLetrero": publicarSinLetrero,
        "seleccionarMarca": seleccionarMarca,
        "selccionaCombustible": selccionaCombustible,
        "seleccionaTransmicion": seleccionaTransmicion,
        "selcecionaPeriodo": selcecionaPeriodo,
        "valorAuto": valorAuto,
        "profiles": profiles

        //que poner debes user, sera perfil?ya que muchos subidas pueden estar en un perfil
        /*  "user": user */
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
        return SubirAuto_Erorr.fromJson(data);
      } // 'UserErorr' sale de la clase User del modelo UserErorr invalido
    } catch (e) {
      print((message: 'Error de algo raro2'));
      return SubirAuto_Erorr(status: '500', message: 'Error de red');
    }
  }
}

//mapeo de usuario de respuesta == 200

class SubirAuto {
  final int id;
  final String descripcionAuto;
  final String ColorAuto;
  final bool publicarSinLetrero;
  final String seleccionarMarca;
  final String selcecionaVersion;
  final int Kilometraje;
  final int selcecionaPeriodo;
  final String selccionaCombustible;
  final String seleccionaTransmicion;
  final bool llavesRepuesto;
  final bool? climatizacion;
  final bool? Suspension;
  final bool? radio;
  final bool? pantallaTactil;
  final bool? conexionBluetooth;
  final int valorAuto;
  final DateTime createdAt;
  final DateTime updatedAt;

  SubirAuto({
    this.climatizacion,
    this.Suspension,
    this.radio,
    this.pantallaTactil,
    this.conexionBluetooth,
    required this.id,
    required this.descripcionAuto,
    required this.ColorAuto,
    required this.publicarSinLetrero,
    required this.seleccionarMarca,
    required this.selcecionaVersion,
    required this.Kilometraje,
    required this.selcecionaPeriodo,
    required this.selccionaCombustible,
    required this.seleccionaTransmicion,
    required this.llavesRepuesto,
    required this.valorAuto,
    required this.createdAt,
    required this.updatedAt,
  });

//constructor que permite crear un usuario a partir de un mapa de datos JSON
  factory SubirAuto.fromJson(Map<String, dynamic> data) {
    return SubirAuto(
        id: data['data']['id'],
        descripcionAuto: data['data']['descripcionAuto'],
        ColorAuto: data['data']['ColorAuto'],
        publicarSinLetrero: data['data']['publicarSinLetrero'],
        seleccionarMarca: data['data']['seleccionarMarca'],
        selcecionaVersion: data['data']['selcecionaVersion'],
        Kilometraje: data['data']['Kilometraje'],
        selcecionaPeriodo: data['data']['selcecionaPeriodo'],
        selccionaCombustible: data['data']['selccionaCombustible'],
        seleccionaTransmicion: data['data']['seleccionaTransmicion'],
        llavesRepuesto: data['data']['llavesRepuesto'],
        climatizacion: data['data']['climatizacion'],
        Suspension: data['data']['Suspension'],
        radio: data['data']['radio'],
        pantallaTactil: data['data']['pantallaTactil'],
        conexionBluetooth: data['data']['conexionBluetooth'],
        valorAuto: data['data']['valorAuto'],
        createdAt: DateTime.parse(data['data']['createdAt']),
        updatedAt: DateTime.parse(
          data['data']['updatedAt'],
        ));
  }
}
//Metodo para convertir el usuario a un mapa de datos, util para enviar daroa una API o guardarlos localmente
/* Map<String, dynamic> toJson(){
  return{
    'jwt' : jwt,
    'user':{
      'id':id,
      'username': username,
'email' : email,
'confirmed' : confirmed,
'blocked' : blocked,
'createdAt' :createdAt ,
'updatedAt' : updatedAt,

    }
  }
} */

/* 
{
    "jwt": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNzA5NTE3NTQ3LCJleHAiOjE3MTIxMDk1NDd9.iXCD7NN_-anLFAR-9RpkKDpDAOVzr51huCjHFD4M27M",
    "user": {
        "id": 1,
        "username": "egaray",
        "email": "thomas.alonsoreyes@gmail.com",
        "provider": "local",
        "confirmed": true,
        "blocked": false,
        "createdAt": "2024-02-05T17:36:21.177Z",
        "updatedAt": "2024-03-02T01:54:43.906Z"
    }
} */

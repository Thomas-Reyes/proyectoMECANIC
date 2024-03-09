//mapeo de usuario de respuesta == 200

class PerfilCreate {
  final int id;
  final String nombreApellido;
  final String rut;
  final String fecha;
  final String direccion;
  final String comuna;
  final int contacto;
  final DateTime createdAt;
  final DateTime updatedAt;

  PerfilCreate({
    required this.id,
    required this.nombreApellido,
    required this.rut,
    required this.direccion,
    required this.comuna,
    required this.fecha,
    required this.contacto,
    required this.createdAt,
    required this.updatedAt,
  });

//constructor que permite crear un usuario a partir de un mapa de datos JSON
  factory PerfilCreate.fromJson(Map<String, dynamic> data) {
    return PerfilCreate(
        id: data['data']['id'],
        nombreApellido: data['data']['nombreApellido'],
        rut: data['data']['rut'],
        fecha: data['data']['fecha'],
        direccion: data['data']['direccion'],
        comuna: data['data']['comuna'],
        contacto: data['data']['contacto'],
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

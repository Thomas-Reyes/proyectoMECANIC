//mapeo de usuario de respuesta == 200

class UserCreate {
  final int id;
  final String username;
  final String email;
  final String provider;
  final DateTime createdAt;
  final DateTime updatedAt;

  UserCreate({
    required this.id,
    required this.username,
    required this.email,
    required this.provider,
    required this.createdAt,
    required this.updatedAt,
  });

//constructor que permite crear un usuario a partir de un mapa de datos JSON
  factory UserCreate.fromJson(Map<String, dynamic> json) {
    print(json['id']);
    return UserCreate(
        id: json['id'],
        username: json['username'],
        email: json['email'],
        provider: json['provider'],
        createdAt: DateTime.parse(json['createdAt']),
        updatedAt: DateTime.parse(
          json['updatedAt'],
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

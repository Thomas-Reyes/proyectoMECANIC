//mapeo de usuario de respuesta == 200
import 'package:flutter/foundation.dart';

class UserCreate {
  final String? jwt;
  final String id;
  final String username;
  final String email;
  final bool confirmed;
  final bool blocked;
  final DateTime createdAt;
  final DateTime updatedAt;

  UserCreate({
    this.jwt,
    required this.id,
    required this.username,
    required this.email,
    required this.confirmed,
    required this.blocked,
    required this.createdAt,
    required this.updatedAt,
  });

//constructor que permite crear un usuario a partir de un mapa de datos JSON
  factory UserCreate.fromJson(Map<String, dynamic> json) {
    return UserCreate(
        jwt: json['jwt'],
        id: json['user']['id'],
        username: json['user']['username'],
        email: json['user']['email'],
        confirmed: json['user']['confirmed'],
        blocked: json['user']['blocked'],
        createdAt: DateTime.parse(json['user']['createdAt']),
        updatedAt: DateTime.parse(
          json['user']['updatedAt'],
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
 
//mapeo de usuario de respuesta == 200
import 'package:flutter/foundation.dart';

class User {
  final String? jwt;
  final int? id;
  final String? username;
  final String? email;
  final bool? confirmed;
  final bool? blocked;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  User({
    this.jwt,
    this.id,
    this.username,
    this.email,
    this.confirmed,
    this.blocked,
    this.createdAt,
    this.updatedAt,
  });

//constructor que permite crear un usuario a partir de un mapa de datos JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
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
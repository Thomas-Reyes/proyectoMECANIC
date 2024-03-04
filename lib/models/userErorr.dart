//mapeo de usuario de respuesta == 400
import 'package:flutter/foundation.dart';

class UserErorr {
  final String status;
  final String message;

  UserErorr({
    required this.status,
    required this.message,
  });

//constructor que permite crear un usuario a partir de un mapa de datos JSON
  factory UserErorr.fromJson(Map<String, dynamic> json) {
    return UserErorr(
      status: json['error']['status'].toString(),
      message: json['error']['message'],
    );
  }
}

/* 
{
    "data": null,
    "error": {
        "status": 400,
        "name": "ValidationError",
        "message": "password is a required field",
        "details": {
            "errors": [
                {
                    "path": [
                        "password"
                    ],
                    "message": "password is a required field",
                    "name": "ValidationError"
                }
            ]
        }
    }
}*/

//mapeo de usuario de respuesta == 400
import 'package:flutter/foundation.dart';

class LoginConfirm_Erorr {
  final String status;
  final String message;

  LoginConfirm_Erorr({
    required this.status,
    required this.message,
  });

//constructor que permite crear un usuario a partir de un mapa de datos JSON
  factory LoginConfirm_Erorr.fromJson(Map<String, dynamic> json) {
    return LoginConfirm_Erorr(
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
//mapeo de usuario de respuesta == 400

class UserCreate_Erorr {
  final String status;
  final String message;

  UserCreate_Erorr({
    required this.status,
    required this.message,
  });

//constructor que permite crear un usuario a partir de un mapa de datos JSON
  factory UserCreate_Erorr.fromJson(Map<String, dynamic> json) {
    return UserCreate_Erorr(
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

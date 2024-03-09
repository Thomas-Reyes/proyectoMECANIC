//mapeo de usuario de respuesta == 400

//crar un error
class PerfilCreate_Erorr {
  final String status;
  final String message;

  PerfilCreate_Erorr({
    required this.status,
    required this.message,
  });

//constructor que permite crear un usuario a partir de un mapa de datos JSON
  factory PerfilCreate_Erorr.fromJson(Map<String, dynamic> data) {
    return PerfilCreate_Erorr(
      status: data['data']['error']['status'].toString(),
      message: data['data']['error']['message'],
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

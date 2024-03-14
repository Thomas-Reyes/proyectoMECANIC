//mapeo de usuario de respuesta == 400

//crar un error
class SubirAuto_Erorr {
  final String status;
  final String message;

  SubirAuto_Erorr({
    required this.status,
    required this.message,
  });

//constructor que permite crear un usuario a partir de un mapa de datos JSON
  factory SubirAuto_Erorr.fromJson(Map<String, dynamic> data) {
    return SubirAuto_Erorr(
      status: data['error']['status'].toString(),
      message: data['error']['message'],
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

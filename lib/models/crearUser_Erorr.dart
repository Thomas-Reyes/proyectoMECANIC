class crearUser_Erorr {
  final String email;
  final String password;

  crearUser_Erorr({
    required this.email,
    required this.password,
  });

//consultar si el mapeo es correcto o hacerlo como el de los demas
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}

/* |EJEMPLO|

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
} */
class crearPerfil_Erorr {
  final String nombre;
  final String rut;
  final DateTime fechaNacimiento;
  final String direccion;
  final String comuna;
  final String numeroTelefono;

  crearPerfil_Erorr({
    required this.nombre,
    required this.rut,
    required this.fechaNacimiento,
    required this.direccion,
    required this.comuna,
    required this.numeroTelefono,
  });

  Map<String, dynamic> toJson() {
    return {
      'nombre': nombre,
      'rut': rut,
      'fechaNacimiento': fechaNacimiento.toIso8601String(),
      'direccion': direccion,
      'comuna': comuna,
      'numeroTelefono': numeroTelefono,
    };
  }
}

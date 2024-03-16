class Car {
  final int id;
  final int seleccionarMarca;
  final int valorAuto;
  final int Kilometraje;
  final String seleccionaTransmicion;
  final String selcecionaPeriodo;
  final String selccionaCombustible;

  Car({
    required this.id,
    required this.seleccionarMarca,
    required this.valorAuto,
    required this.Kilometraje,
    required this.seleccionaTransmicion,
    required this.selcecionaPeriodo,
    required this.selccionaCombustible,
  });
  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      id: json['id'],
      seleccionarMarca: json['nombreApellido'],
      valorAuto: int.parse(json['valorAuto']),
      Kilometraje: int.parse(json['Kilometraje']),
      seleccionaTransmicion: json['seleccionaTransmicion'],
      selcecionaPeriodo: json['selcecionaPeriodo'],
      selccionaCombustible: json['contacto'],
    );
  }

  Map<String, dynamic> tojson() {
    return {
      'id': id,
      'seleccionarMarca': seleccionarMarca,
      'valorAuto': valorAuto,
      'Kilometraje': Kilometraje,
      'seleccionaTransmicion': seleccionaTransmicion,
      'selcecionaPeriodo': selcecionaPeriodo,
      'selccionaCombustible': selccionaCombustible
    };
  }
}

class Carros {
  final List<Carros> carros;
  Carros({
    required this.carros,
  });

  factory Carros.fromJson(Map<String, dynamic> json) {
    return Carros(
      carros: List<Carros>.from(
          json['data'].map((car) => Carros.fromJson(car)).toList()),
    );
  }
}

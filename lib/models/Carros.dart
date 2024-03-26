class Cars {
  final List<Cars> cars;
  Cars({
    required this.cars,
  });

  factory Cars.fromJson(Map<String, dynamic> json) {
    return Cars(
      cars: List<Cars>.from(
          json['data'].map((cars) => Cars.fromJson(cars)).toList()),
    );
  }
}

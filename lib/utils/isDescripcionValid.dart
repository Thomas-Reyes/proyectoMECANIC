bool isDescripcionValid(String input) {
  final RegExp regex = RegExp(r'^[a-zA-Z]+$');
  return regex.hasMatch(input);
}

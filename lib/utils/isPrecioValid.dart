bool isPrecioValid(String numero) {
  final RegExp regex = RegExp(r'^\d+$');
  return regex.hasMatch(numero);
}

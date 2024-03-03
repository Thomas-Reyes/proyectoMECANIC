bool isEmailValid(String email) {
  // Expresión regular para validación de email
  final RegExp regex = RegExp(
    r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
  );
  return regex.hasMatch(email);
}

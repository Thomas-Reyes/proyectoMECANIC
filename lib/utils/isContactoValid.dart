bool isContactoValid(String phoneNumber) {
  // Expresión regular para validar un número de teléfono
  final RegExp regex = RegExp(
    r'^\d{9}$', // Se espera un número de 9 dígitos
  );
  return regex.hasMatch(
      phoneNumber); // Valida el número de teléfono usando la expresión regular
}

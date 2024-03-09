bool isContactoValid(int phoneNumber) {
  // Expresión regular para validar un número de teléfono
  final RegExp regex = RegExp(
    r'^[0-9]{9}$', // Se espera un número de 9 dígitos
  );
  return regex.hasMatch(phoneNumber
      .toString()); // Valida el número de teléfono usando la expresión regular
}

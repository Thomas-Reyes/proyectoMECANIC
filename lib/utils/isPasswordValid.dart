bool isPasswordValid(String password) {
  // Construyendo la expresión regular por partes
  String pattern = r'^' // Inicio de la cadena
      r'(?=.*[A-Z])' // Al menos una letra mayúscula
      r'(?=.*\d)' // Al menos un número
      r'(?=.*[-!#\$%^&*()_+{}[\];"\'
      '|<>?`~\\,=/\\])' // Caracteres especiales adicionales (sin incluir el punto '.')
      r'(?!.*[@:])' // Excluir '@' y ':'
      r'.{8,}' // Longitud mínima de 8 caracteres
      r'$'; // Fin de la cadena
  final RegExp regex = RegExp(pattern);
  return regex.hasMatch(password);
}

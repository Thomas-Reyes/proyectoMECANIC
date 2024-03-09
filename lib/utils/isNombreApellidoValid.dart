bool isNombreApellidoValid(String input) {
  // Expresión regular para validar una cadena
  //con al menos 1 mayúscula, 1 minúscula y longitud mínima de 3 caracteres
  final RegExp regex = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z]).{3,}$',
  );
  return regex.hasMatch(input);
}

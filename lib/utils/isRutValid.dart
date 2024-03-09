bool isValidRut(String rut) {
  // Limpiar el RUT de puntos y guión.
  var cleanRut = rut.replaceAll(RegExp(r'[\.\-]'), '');

  // Verificar el largo mínimo.
  if (cleanRut.length < 8) return false;

  // Extraer cuerpo y dígito verificador.
  var cuerpo = cleanRut.substring(0, cleanRut.length - 1);
  var dv = cleanRut.substring(cleanRut.length - 1).toUpperCase();

  // Calcular dígito verificador.
  int suma = 0;
  int multiplicador = 2;

  for (int i = cuerpo.length - 1; i >= 0; i--) {
    suma += int.parse(cuerpo[i]) * multiplicador;
    multiplicador = multiplicador == 7 ? 2 : multiplicador + 1;
  }

  var dvEsperado = 11 - (suma % 11);
  var dvCalculado = dvEsperado == 11
      ? '0'
      : dvEsperado == 10
          ? 'K'
          : dvEsperado.toString();

  // Comparar el DV calculado con el DV del RUT.
  return dv == dvCalculado;
}

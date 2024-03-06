bool isValidDateOfBirth(DateTime dateOfBirth) {
  // Verificar que la fecha de nacimiento no sea en el futuro
  if (dateOfBirth.isAfter(DateTime.now())) {
    return false;
  }
  // Verificar que la fecha de nacimiento no sea muy antigua
  final DateTime oldestAllowedDate =
      DateTime.now().subtract(Duration(days: 365 * 150)); // 150 años
  if (dateOfBirth.isBefore(oldestAllowedDate)) {
    return false;
  }
  return true;
}

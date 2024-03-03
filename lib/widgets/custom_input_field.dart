import 'package:flutter/material.dart';

typedef FormValidator = String? Function(String? value);

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;
  final FormValidator? validator;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        focusedBorder: OutlineInputBorder(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
/* 
// Función para validar el formato del email
bool isValidEmail(String? email) {
  if (email == null || email.isEmpty) return false;
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegex.hasMatch(email);
} 
bool isValidPassword(String? password) {
  if (password == null || password.length != 8) {
    return false; // Verifica que la longitud sea de 8 caracteres
  }

  // Verifica si hay al menos una mayúscula, al menos un número y al menos un carácter especial
  bool hasUppercase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;

  for (int i = 0; i < password.length; i++) {
    if (password[i].toUpperCase() == password[i]) {
      hasUppercase = true;
    } else if (int.tryParse(password[i]) != null) {
      hasNumber = true;
    } else if (RegExp(r'[!@#$%&*_\-+=?/\\|:;,.<>¡¿]').hasMatch(password[i])) {
      hasSpecialChar = true;
    }

    // Si encuentra un carácter no permitido, retorna false
    if (!password[i].contains(RegExp(r'[A-Za-z0-9]'))) {
      return false;
    }
  }

  // Verifica si al menos hay un tipo de caracter permitido (letras, números o caracteres especiales)
  return hasUppercase && hasNumber && hasSpecialChar;
}

// Función para validar el formato de fecha
bool isValidDate(String? date) {
  if (date == null || date.isEmpty) return false;
  final dateRegex = RegExp(r'^\d{1,2}/\d{1,2}/\d{4}$');
  if (!dateRegex.hasMatch(date)) return false;

  List<String> parts = date.split('/');
  int day, month, year;
  try {
    day = int.parse(parts[0]);
    month = int.parse(parts[1]);
    year = int.parse(parts[2]);
  } catch (e) {
    return false;
  }

  if (day < 1 || day > 31) return false;
  if (month < 1 || month > 12) return false;

  if ((month == 4 || month == 6 || month == 9 || month == 11) && day == 31)
    return false;
  if (month == 2) {
    bool isLeapYear = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
    if (day > 29 || (day == 29 && !isLeapYear)) return false;
  }

  return true;
}

// Función para validar el formato del número de teléfono
bool isValidPhoneNumber(String? phone) {
  if (phone == null || phone.isEmpty) return false;
  final phoneRegex = RegExp(r'^[0-9]{8}$'); // Se limita a 8 dígitos exactamente
  return phoneRegex.hasMatch(phone);
}

bool isValidRut(String? rut) {
  if (rut == null || rut.isEmpty) return false;
  final rutRegex = RegExp(
      r'^\d{1,2}\.\d{3}\.\d{3}[-][0-9kK]$'); // Se corrigió la expresión regular
  if (!rutRegex.hasMatch(rut)) return false;

  var cleanRut = rut.replaceAll(RegExp(r'[-.]'), '');
  String dv = cleanRut.substring(cleanRut.length - 1).toUpperCase();
  String numberPart = cleanRut.substring(0, cleanRut.length - 1);

  int number;
  try {
    number = int.parse(numberPart);
  } catch (e) {
    return false;
  }

  int m = 0, s = 1;
  for (; number != 0; number ~/= 10) {
    s = (s + number % 10 * (9 - m++ % 6)) % 11;
  }

  return dv == (s > 0 ? (s - 1).toString() : 'K');
}
 */
bool isFechaValid(String input) {
  RegExp regExp =
      new RegExp(r'^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[0-2])-(19|20)\d\d$');
  return regExp.hasMatch(input);
}

extension StringExtension on String {
  bool isValidEmail() {
    if (this != null) {
      return RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(this);
    } else {
      return false;
    }
  }

  bool isValidMobileNumber() {
    if (this != null) {
      if (this.length == 10) {
        RegExp _regExp = RegExp(r'^(?:[+0][1-9])?[0-9]{10,12}$');
        return _regExp.hasMatch(this);
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}

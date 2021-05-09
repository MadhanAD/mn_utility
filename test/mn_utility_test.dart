import 'package:flutter_test/flutter_test.dart';
import 'package:mn_utility/mn_utility.dart';

void main() {
  test('email validation', () {
    var validEmail = "mail@gmail.com";
    var firstInValidEmail = "mailgmail.com";
    var secondInValidEmail = "mail@gmailcom";
    String? nullEmail = null;
    String emptyEmail = "";
    expect(validEmail.isValidEmail(), true);
    expect(firstInValidEmail.isValidEmail(), false);
    expect(secondInValidEmail.isValidEmail(), false);
    expect(nullEmail?.isValidEmail() ?? false, false);
    expect(emptyEmail.isValidEmail(), false);
  });

  test('mobile number validation', () {
    var validMobileNumber = "1234567890";
    var invalidMobileNumber = "123456789o";
    String? nullMobileNumber = null;
    String emptyMobileNumber = "";
    expect(validMobileNumber.isValidMobileNumber(), true);
    expect(invalidMobileNumber.isValidMobileNumber(), false);
    expect(nullMobileNumber?.isValidMobileNumber() ?? false, false);
    expect(emptyMobileNumber.isValidMobileNumber(), false);
  });
}

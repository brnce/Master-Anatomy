// ignore_for_file: avoid_print

import 'package:test/test.dart';
import 'package:email_validator/email_validator.dart';

// this is a test to check if the user with the email 
//chris@gmail.com exist in the database
void main() {
  test('Email Test', () {
    const String email = 'chris@gmail.com';
    final bool isValid = EmailValidator.validate(email);
    print('Email is valid? ${isValid ? 'yes' : 'no'}');
  });
}

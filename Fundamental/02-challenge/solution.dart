import 'dart:io';

void main() {
  /// Q1: print output using single print
  /// hint : \n
  /// output :  I am Learning Program with
  ///           Mohamed Elsayed :)

  /// solution
  print('I am Learning Program with \n  Mohamed Elsayed :)');

  /// Q2: print form using single print
  /// |============|    note : 12(=)
  /// |===Mohamed==|
  /// |====Dart====|
  /// |============|

  /// solution
  print(
    '|============|\n'
    '|===Mohamed==|\n'
    '|====Dart====|\n'
    '|============|\n',
  );

  /// Q3: check password length > 6 ? 'strong' : 'weak' using  single print
  /// hint : create variable password

  /// solution
  print('Enter password');
  String password = stdin.readLineSync() ?? '';
  print('password : ${password.length > 6 ? 'strong' : 'weak'}  ');
}

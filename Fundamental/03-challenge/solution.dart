import 'dart:io';

void main() {
  /// Q1: defined variable  when the user can input (int or double)
  /// sum = x + y;
  /// print('sum : $sum);

  /// solution
  num x = 10, y = 20.5, sum;
  sum = x + y;
  print('sum : $sum');

  /// Q2: Complete program
  ///  input userName & gender (1 male , 2 female DataType int  )
  ///
  /// ♦️ check userName if null output 'enter userName  Try agin'
  ///
  /// ♦️ check gender if null output  'enter gender  Try agin'
  ///
  /// ♦️ check gender try int if null output  'error gender just number, try agin '
  ///
  /// create method checkGender
  /// if(gender == 1) return 'male';
  /// else if(gender == 2) return 'female';
  /// else  return null ;
  ///
  /// ♦️ when return null show message in output 'error gender 1 for male, 2 for female
  ///
  /// ♦️ when return value output  print('userName : mai, gender : female');
  ///

  /// * hint
  /// ■ user input using dart: io
  ///  - check input gender  int dataType
  ///  - name user
  /// ■ using if statement

  /// * hint
  /// ■ user input using dart: io
  ///  - check input int dataType
  ///  - name user
  /// ■ using if statement

  /// solution
  print('enter user name ');
  String? userName = stdin.readLineSync();
  // userName = '';
  if (userName != null && userName.isNotEmpty) {
    print('enter gender 1 = male, 2 = female');
    String? inputGender = stdin.readLineSync();
    if (inputGender != null && inputGender.isNotEmpty) {
      int? gender = int.tryParse(inputGender);
      if (gender != null) {
        if (checkGender(gender) != null) {
          print('userName : $userName , gender : ${checkGender(gender)}');
        } else {
          print('error gender 1 for male, 2 for female');
        }
      } else {
        print('error gender just number, try agin');
      }
    } else {
      print('enter gender  Try agin');
    }
  } else {
    print('enter userName  Try agin');
  }
}

// * check gender return String or null
String? checkGender(int gender) {
  if (gender == 1)
    return 'male';
  else if (gender == 2)
    return 'female';
  else
    return null;
}

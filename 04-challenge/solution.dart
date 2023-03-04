import 'dart:io';

void main() {
  /// Q1: Complete program calculate

  ///  input number 1  & number 2
  ///  (n1 & n2 : int or double  )
  ///
  /// ♦️ check n1 &  n2  if null output 'enter number   Try agin'
  /// ♦️ check n1 &  n2  if not number  output 'error n1 or n2 just number, try agin'
  ///
  /// input operator ( + - * / %  )
  /// ♦️ check operator if null output 'enter operator  Try agin'
  ///
  ///
  /// create one  method calculate
  /// 1 - 3 parameter (n1 ,n2 ,op)
  /// return result ;
  ///
  ///  output : ' 7 - 3 = 4 '
  ///
  ///
  ///
  ///
  ///

  /// solution
  print('enter number 1');
  String? number1 = stdin.readLineSync();
  print('enter number 2');
  String? number2 = stdin.readLineSync();
  print('enter operator + - * / %');
  String? operator = stdin.readLineSync();

  if ((number1 != null && number1.isNotEmpty) &&
      (number2 != null && number2.isNotEmpty) &&
      (operator != null && operator.isNotEmpty)) {
    num? n1 = int.tryParse(number1) ?? double.tryParse(number1);
    num? n2 = int.tryParse(number2) ?? double.tryParse(number2);
    if (n1 != null && n2 != null) {
      num result = calculate(n1, n2, operator);
      print('$n1 $operator $n2 =$result');
    } else {
      print('error n1 or n2 just number, try agin');
    }
  } else {
    print('enter value n1 or n2 or operator, try agin ');
  }
}

num calculate(num n1, num n2, String op) {
  // '  4 + 5.0 '
  switch (op) {
    case '+':
      return n1 + n2;
    case '-':
      return n1 - n2;
    case '*':
      return n1 * n2;
    case '/':
      return n1 / n2;
    case '%':
      return n1 % n2;
    default:
      return 0;
  }
}

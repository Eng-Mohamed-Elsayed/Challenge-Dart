import 'dart:io';

void main() {
  /// Year = 365 Days
  /// Year = 52 Weeks
  /// Year = 12 Month

  /// rules
  int yearDays = 365;
  int yearWeek = 52;
  int yearMonth = 12;
  int year100 = 100;
  int age;
  String remaining = 'Remaining', iLived = 'I lived';

  /// enter age
  print('Enter Age');
  age = int.parse(stdin.readLineSync() ?? '');

  /// Q1 :
  /// Calculate the remaining life (100)
  /// Output You Have 12410 Days, 1768 weeks, and 408 Months left.
  /// dart ```
  /// int yearRemaining = year100 - age;
  /// int dayRemaining = yearRemaining * yearDays;
  /// int monthRemaining = yearRemaining * yearMonth;
  /// int weekRemaining = yearRemaining * yearWeek;
  /// print(
  ///      'You Have $dayRemaining Days, $weekRemaining weeks, and $monthRemaining Months left');
  /// ```
  /// Backtick

  /// Q2 :
  /// Calculate how long I lived
  /// Output You Have 12410 Days, 1768 weeks, and 408 Months left.
  // int dayLived = age * yearDays;
  // int monthLived = age * yearMonth;
  // int weekLived = age * yearWeek;

  // print(
  //     'You Have $dayLived Days, $weekLived weeks, and $monthLived Months I lived');

  void calculateAge(int myAge, String choice) {
    int yearRemaining;
    if (choice == remaining) {
      yearRemaining = year100 - myAge;
    } else if (choice == iLived) {
      yearRemaining = age;
    } else {
      yearRemaining = 0;
    }

    int dayRemaining = yearRemaining * yearDays;
    int monthRemaining = yearRemaining * yearMonth;
    int weekRemaining = yearRemaining * yearWeek;
    print(
        'You Have $dayRemaining Days, $weekRemaining weeks, and $monthRemaining Months ${choice == remaining ? 'left' : 'I lived'} ');
  }

  calculateAge(age, remaining);
  calculateAge(age, iLived);
  calculateAge(age, 'mohamed');
}

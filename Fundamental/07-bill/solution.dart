import 'dart:io';

void main() {
  print('Welcome to the tip calculator!');

  /// total bill
  stdout.write('What was the total bill? \$ ');
  double? bill = double.tryParse(stdin.readLineSync() ?? '');

  /// tip give
  stdout.write('How much tip would you like to give? 10, 12, or 15 ? ');
  int? tip = int.tryParse(stdin.readLineSync() ?? '');

  /// count people
  stdout.write('How many people to split the bill? ');
  int? people = int.tryParse(stdin.readLineSync() ?? '');

  if (bill != null && tip != null && people != null) {
    /// 15 / 100 = 0.15
    double tipAsPercent = tip / 100;

    /// Total tip amount
    /// 150 * 0.15  = 22.5
    double totalTipAmount = tipAsPercent * bill;

    /// total bill
    double totalBill = bill + totalTipAmount;

    /// per person
    double billPerPerson = totalBill / people;

    /// 45.666666
    /// 45.666666.round() -> 46
    /// 45.4444.round() -> 45
    // int finalAmount = billPerPerson.round();

    /// 45.666666.roundToDouble() -> 46.0
    /// 45.4444.round() -> 45.0
    double finalAmount = billPerPerson.roundToDouble();
    print('Each person should pay: \$  $finalAmount');
  }
}

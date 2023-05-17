import 'dart:io';

void main() {
  print('Welcome to the tip calculator!');

  /// total bill
  stdout.write('What was the total bill? \$');
  double? bill = double.tryParse(stdin.readLineSync() ?? '');

  /// tip give
  stdout.write('How much tip would you like to give? 10, 12, or 15 ? ');
  int? tip = int.tryParse(stdin.readLineSync() ?? '');

  /// count people
  stdout.write('How many people to split the bill? ');
  int? people = int.tryParse(stdin.readLineSync() ?? '');

  if (tip != null && bill != null && people != null) {
    /// 15 / 100 = 0.15
    double tip_as_percent = tip / 100;

    /// total tip amount
    double total_tip_amount = bill * tip_as_percent;

    /// total bill
    double total_bill = bill + total_tip_amount;

    /// per person
    double bill_per_person = total_bill / people;

    /// 45.666666
    /// 45.666666.round() -> 46
    /// 45.4444.round() -> 45

    // int final_amount = bill_per_person.round();

    /// 45.666666.roundToDouble() -> 46.0
    /// 45.4444.round() -> 45.0
    double final_amount = bill_per_person.roundToDouble();

    print('Each person should pay: \$ $final_amount');
  }
}

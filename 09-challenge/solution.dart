import 'dart:io';

void main() {
  stdout.write('Enter Start Range: ');
  int startRange = int.parse(stdin.readLineSync() ?? '0');
  stdout.write('Enter End Range: ');
  int endRange = int.parse(stdin.readLineSync() ?? '0');
  stdout.writeln('Prime Numbers in the Given Range');
  printPrimeNumbers(startRange, endRange);
}

void printPrimeNumbers(start, end) {
  /// count start range and  check less than or equal  end range
  a:
  for (int sr = start; sr <= end; sr++) {
    for (int i = 2; i <= sr / i; i++) {
      if (sr % i == 0) {
        /// not prime
        continue a;
      }
    }

    /// is  prime
    stdout.write(sr);
    stdout.write(' ');
  }
}

import 'dart:io';

void main() {
  stdout.write('Enter number check  prime : ');
  int n = int.parse(stdin.readLineSync() ?? '0');
  if (isPrime(n)) {
    print('$n is a prime number.');
  } else {
    print('$n is not a prime number.');
  }
}

/// is prime (n)
/// n =7
/// 2, 3, 4, 5, 6
/// 2 <= 7 / 2  | 2 <= 3.5
/// 3 <= 7 / 3 | 3 <= 2.33
bool isPrime(n) {
  for (int i = 2; i <= n / i; i++) {
    print('$i <= $n / $i {${n / i}}');
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

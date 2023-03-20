import 'dart:io';

void main() {
  /// Q1: String repeat

  ///  write a function that accepts (n) integer and  a String (s)
  ///  as parameter and return a String of (s)  repeated exactly  (n) items
  ///
  ///  Ex :
  ///  (6,I) -> IIIIII
  ///
  /// Hint :
  /// dart:io using stdout.write()

  /// solution
  print('enter text ');
  String? text = stdin.readLineSync();
  print('enter number repeated text');
  String? repeated = stdin.readLineSync();

  if ((text != null && text.isNotEmpty) &&
      (repeated != null && repeated.isNotEmpty)) {
    int? numberRepeated = int.tryParse(repeated);
    if (numberRepeated != null) {
      repeatedText(numberRepeated, text);
    } else {
      stdout.writeln('enter  repeated number just  integer number ');
    }
  } else {
    stdout.writeln('enter text and repeated ,try agin');
  }
}

// String repeatedText(int rep, String text) {
//   String result = '';
//   for (int i = 1; i <= rep; i++) {
//     // print(text);
//     // result = result + text;
//     result += text;
//   }
//   return result;
// }

void repeatedText(int rep, String text) {
  for (int i = 1; i <= rep; i++) {
    // print(text);
    stdout.write(text);
  }
  stdout.writeln();
}

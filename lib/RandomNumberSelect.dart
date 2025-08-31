import 'dart:math';

final random = Random();
class RandomNumberSelect {
  final int num1;
  final int num2;
  late final int result;

  RandomNumberSelect(this.num1, this.num2) {
    result = randomnumber(num1, num2);
  }

  int randomnumber(int a, int b) {

    return a + random.nextInt(b - a + 1); // generates between a and b
  }
}

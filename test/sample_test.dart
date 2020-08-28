import 'package:flutter_test/flutter_test.dart';
import 'package:thynui/util/add.dart';

void main() {
  test('should return a list with expected search results', () async {
    expect(add(1, 1), equals(2));
  });
}

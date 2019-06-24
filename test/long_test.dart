import 'package:test/test.dart';

void main() {
  test('passes after a while', () async {
    await Future.delayed(Duration(seconds: 5));
    expect(true, isTrue);
  });
}
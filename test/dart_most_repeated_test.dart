import 'package:dart_most_repeated/dart_most_repeated.dart';
import 'package:test/test.dart';

void main() {
  test(
    'main test',
    () {
      const inputStr =
          // init
          'Lorem ipsum dolor sit amet,'

          // remove sit once
          'Lorem ipsum dolor amet,'

          // remove ipsum twice
          '''
          Lorem dolor sit amet,
          Lorem dolor sit amet,
          '''

          // remove dolor three times
          '''
          Lorem ipsum sit amet,
          Lorem ipsum sit amet,
          Lorem ipsum sit amet,
          '''

          // remove lorem four times
          '''
          ipsum dolor sit amet,
          ipsum dolor sit amet,
          ipsum dolor sit amet,
          ipsum dolor sit amet,
          '''
          //
          ;

      final output = mostRepeated(inputStr);
      final expectedOutput = ['amet', 'sit', 'ipsum', 'dolor', 'lorem'];

      expect(output, expectedOutput);
    },
  );
}

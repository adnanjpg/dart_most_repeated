import 'package:dart_most_repeated/dart_most_repeated.dart';

void main(List<String> arguments) {
  const inputStr = '''
Dart was unveiled at the GOTO conference in Aarhus, Denmark, October 10–12, 2012.[13] The project was founded by Lars Bak and Kasper Lund.[14] Dart 1.0 was released on November 14, 2013.[15]

Dart initially had a mixed reception and the Dart initiative has been criticized by some for fragmenting the web, due to the original plans to include a Dart VM in Chrome. Those plans were dropped in 2015 with the 1.9 release of Dart to focus instead on compiling Dart to JavaScript.[16]

In August 2018, Dart 2.0 was released, with language changes including a sound type system.[17]

Dart 2.6 introduced a new extension, dart2native. The feature extends native compilation to the Linux, macOS, and Windows desktop platforms. Earlier developers were able to create new tools only using Android or iOS devices. Moreover, with this extension it becomes possible to compose a Dart program into self-contained executables. Thus, according to the company representatives, it’s not obligatory now to have Dart SDK installed, the self-contained executables can now start running in a few seconds. The new extension is also integrated with Flutter toolkit, thus making it possible to use the compiler on small services (backend supporting for example).[18][19]

Standardization
Ecma International has formed technical committee TC52[20] to work on standardizing Dart, and inasmuch as Dart can be compiled to standard JavaScript, it works effectively in any modern browser. Ecma International approved the Dart language specification first edition in July 2014, at its 107th General Assembly,[21] and a second edition in December 2014.[22] The latest specification is available at Dart language specification.
''';

  final output = mostRepeated(inputStr);

  print(output);
}

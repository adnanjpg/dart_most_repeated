List<String> mostRepeated(String inputStr) {
  final arr = split(input: inputStr, separator: ' ');

  Map<String, int> wordCountMap = {};

  // map each string with its occurence count
  for (String char in arr) {
    // use lowercase to compare, e.g. "A" and "a" are the same
    char = char.toLowerCase();

    int repCount = wordCountMap[char] ?? 0;

    wordCountMap[char] = ++repCount;
  }

  List<String> words = [];
  List<int> counts = [];

  // what we're going to do is simply loop all entries of the `wordCountMap`,
  // and sort the words by their count, by stroing them in 2 seperate lists
  // which go in parallel.
  for (MapEntry entry in wordCountMap.entries) {
    int? idx;

    for (int i = 0; i < counts.length; i++) {
      final e = counts[i];

      // if the occurence count is bigger that the current one,
      // we insert the word at the current index
      if (entry.value > e) {
        idx = i;
        break;
      }
    }

    idx ??= counts.length;

    words.insert(idx, entry.key);
    counts.insert(idx, entry.value);
  }

  return words;
}

List<String> split({
  required String input,
  required String separator,

  /// after we split, some strings will have some invalid characters,
  /// e.g. "we've" should return ['we']
  List<String> blockedStrings = const ['', ' ', '.', ',', '’', '\'', '\n'],
}) {
  List<String> arr = input.split(separator);

  // apply blockedStrings filter
  arr = arr.map(
    (str) {
      str = str.trim();

      for (var blocked in blockedStrings) {
        str = removeAfterChar(str, blocked);
      }

      return str;
    },
  ).toList();

  // after the previous filter, some
  // elements might become empty
  arr.removeWhere((element) => element.isEmpty);

  return arr;
}

String removeAfterChar(String inp, String char) {
  String output = '';

  for (String ch in inp.split('')) {
    // as we wanna remove `char` and everything after it,
    // we can return from here
    if (ch == char) {
      return output;
    }

    output += ch;
  }

  return output;
}

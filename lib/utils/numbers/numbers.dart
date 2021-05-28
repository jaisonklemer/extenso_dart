import 'package:extenso_dart/lists/numbersList.dart';
import 'package:intl/intl.dart';

String lt10(num number) {
  return lessThan10[number];
}

String lt100(num number) {
  if (number < 10) return lt10(number);
  if (number < 20) return lessThan100[number - 10];

  var unit = lt10(number % 10);
  var position = (number - number % 10) / 10 + 8;
  var ten = lessThan100[position.toInt()];
  return unit != 'zero' ? '$ten e $unit' : '$ten';
}

String lt1000(num number) {
  if (number == 100) return 'cem';

  if (number < 100) return lt100(number);

  var hundredNum = number - number % 100;
  var restNum = number % 100;
  var hundred = lessThan1000[(hundredNum / 100 - 1).toInt()];
  var rest = lt100(restNum);

  return restNum != 0 ? '$hundred e $rest' : '$hundred';
}

String gt1000(num number) {
  if (number == 1000) return greaterThan1000[0];

  return formatNumberGT1000(
      formatNumber(number), checkDecimals(formatNumber(number)));
}

String formatNumber(num number) {
  var f = NumberFormat();
  var numb = f.format(number).replaceAll(',', '.');
  return numb;
}

List<dynamic> checkDecimals(String number) {
  var dot = '.'.allMatches(number).length;
  List casas = [];

  while (dot != 0) {
    dot = dot - 1;
    casas.add(greaterThan1000[dot]);
  }

  return casas;
}

List<String> splitNumber(String numbers) {
  var numbersMap = numbers.split('.');
  return numbersMap;
}

String formatNumberGT1000(number, decimalString) {
  var splitedNumbers = splitNumber(number);
  var response = '';
  var temp = '';

  for (int i = 0; i < splitedNumbers.length; i++) {
    temp = lt1000(int.parse(splitedNumbers[i]));

    if (i >= decimalString.length) {
      response += temp;
    } else {
      response += temp +
          ' ' +
          decimalString[i] +
          (int.parse(splitedNumbers[1]) < 100 ? ' e ' : ' ');
    }
  }
  return clear(response);
}

String clear(String str) {
  var cleared = '';
  cleared = str.replaceFirst(RegExp(r'um mil'), 'mil');
  // cleared = str.replaceFirst(RegExp(r'um mil'), 'mil');
  return cleared;
}

// String singularize(String str) {}

import 'package:extenso_dart/src/lists/datesList.dart';
import 'package:extenso_dart/src/utils/numbers/numbers.dart';

splitDate(date) {
  var dateMap = date.split('/');
  return dateMap;
}

String parseDate(date) {
  var day = lt100(int.parse(date[0]));

  var month = months[int.parse(date[1]) - 1];
  var year;
  if (date.length == 3) {
    year = gt1000(int.parse(date[2]));
    return '$day de $month de $year';
  }

  return '$day de $month';
}

String verifyAndCorrectDate(date) {
  var dateMap = splitDate(date);
  if (dateMap == 3) {
    var formatedDate = DateTime.utc(dateMap[2], dateMap[2], dateMap[1]);
    var finalDate = formatedDate.day.toString() +
        '/' +
        formatedDate.month.toString() +
        '/' +
        formatedDate.year.toString();
    return parseDate(splitDate(finalDate));
  }

  return parseDate(dateMap);
}

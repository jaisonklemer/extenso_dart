library extenso;

import 'package:extenso_dart/utils/dates/dates.dart';
import 'package:extenso_dart/utils/numbers/numbers.dart';

class Extenso {
  /// Returns [number] in long form.
  ///
  /// Ex: 22 -> vinte e dois
  // ignore: missing_return
  String number(num number) {
    if (number < 100) return lt100(number);
    if (number >= 100 && number < 1000) return lt1000(number);
    return gt1000(number);
  }

  /// Returns [dataString] in long form
  ///
  /// Ex: 11/05/1998 -> onze de maio de mil novecentos e noventa e oito
  String date(String date) {
    return verifyAndCorrectDate(date);
  }
}

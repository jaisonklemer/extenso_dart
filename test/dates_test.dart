import 'package:flutter_test/flutter_test.dart';

import 'package:extenso_dart/extenso.dart';

void main() {
  test('return date in extension', () {
    final extenso = Extenso();
    expect(extenso.date('11/05'), 'onze de maio');
    expect(extenso.date('11/01'), 'onze de janeiro');
    // expect(extenso.date('11/12'), 'onze de dezembro');
    // expect(extenso.date('11/13/2000'), 'onze de janeiro de dois mil e um');
    // expect(extenso.date('11/12/2021'),
    //     'onze de dezembro de dois mil e vinte e um');
    // expect(extenso.date('32/13/2021'),
    //     'cinco de dezembro de dois mil e vinte e um');
  });
}

import 'package:flutter_test/flutter_test.dart';

import 'package:extenso_dart/extenso.dart';

void main() {
  test('return numbers < 10 in extension', () {
    final extenso = Extenso();
    expect(extenso.number(2), 'dois');
    expect(extenso.number(0), 'zero');
  });

  test('return numbers greater than 10 and less than 100 in extension', () {
    final extenso = Extenso();
    expect(extenso.number(11), 'onze');
    expect(extenso.number(19), 'dezenove');
    expect(extenso.number(22), 'vinte e dois');
    expect(extenso.number(45), 'quarenta e cinco');
    expect(extenso.number(72), 'setenta e dois');
    expect(extenso.number(88), 'oitenta e oito');
    expect(extenso.number(99), 'noventa e nove');
  });

  test('return numbers greater than 100 and less than 1000 in extension', () {
    final extenso = Extenso();
    expect(extenso.number(101), 'cento e um');
    expect(extenso.number(199), 'cento e noventa e nove');
    expect(extenso.number(831), 'oitocentos e trinta e um');
    expect(extenso.number(457), 'quatrocentos e cinquenta e sete');
  });

  // test('return numbers greater than 1000', () {
  //   final extenso = Extenso();
  //   expect(extenso.number(1010), 'mil');
  // });

  test('return numbers greater than 1000 in long form', () {
    final extenso = Extenso();
    expect(extenso.number(23254167),
        "vinte e três milhões duzentos e cinquenta e quatro mil cento e sessenta e sete");
    expect(extenso.number(2021), "dois mil e vinte e um");
    expect(extenso.number(1914), "mil novecentos e quatorze");
    expect(extenso.number(1101), "mil cento e um");
    expect(extenso.number(1083), "mil e oitenta e três");
    // expect(extenso.number(3276365468),
    //     "três bilhões duzentos e setenta e seis milhões trezentos e sessenta e cinco mil quatrocentos e sessenta e oito");
  });
}

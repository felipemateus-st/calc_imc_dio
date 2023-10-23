import 'package:calc_imc_dio/calc_imc_dio.dart';
import 'package:test/test.dart';

void main() {
  test('Sondando IMC', () {
    expect(calcularIMC(70, 1.75), 22.857142857142858);
  });
}

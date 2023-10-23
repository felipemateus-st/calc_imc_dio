import 'dart:io';
import 'package:calc_imc_dio/calc_imc_dio.dart';

void main() {
  print("\nCalculadora de IMC");
  bool fim = false;
  double altura = 0;
  double peso = 0;

  while (!fim) {
    bool pesoValido = false;

    while (!pesoValido) {
      stdout.write("Digite o seu peso em kg: ");
      var pesoDigitado = stdin.readLineSync();

      if (pesoDigitado == null || double.tryParse(pesoDigitado) == null) {
        print(
            "Por favor, insira um peso numérico e positivo.\n\n------------------------\n");
      } else {
        peso = double.parse(pesoDigitado);
        pesoValido = true;
      }
    }

    bool alturaValida = false;

    while (!alturaValida) {
      stdout.write("Digite a sua altura em metros: ");
      var alturaDigitada = stdin.readLineSync();

      if (alturaDigitada == null || double.tryParse(alturaDigitada) == null) {
        print(
            "Por favor, insira uma altura numérica e positiva.\n\n------------------------\n");
      } else {
        altura = double.parse(alturaDigitada);
        alturaValida = true;
      }
    }

    if (peso <= 0 || altura <= 0) {
      print(
          "Por favor, insira valores numéricos e positivos.\n\n------------------------\n");
      return;
    } else {
      var imc = calcularIMC(peso, altura);

      print("O seu IMC é de $imc");

      interpretarIMC(imc);

      fim = true;
    }
  }
}

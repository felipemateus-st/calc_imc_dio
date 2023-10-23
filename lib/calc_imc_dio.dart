double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

void interpretarIMC(double imc) {
  print("\nSeu IMC é considerado: ");
  if (imc < 16) {
    print("Magreza grave");
  } else if (imc >= 16 && imc < 17) {
    print("Magreza moderada");
  } else if (imc >= 17 && imc < 18.5) {
    print("Magreza leve");
  } else if (imc >= 18.5 && imc < 25) {
    print("Saudável");
  } else if (imc >= 25 && imc < 30) {
    print("Sobrepeso");
  } else if (imc >= 30 && imc < 35) {
    print("Obesidade Grau 1");
  } else if (imc >= 35 && imc < 40) {
    print("Obesidade Grau 2");
  } else if (imc >= 40) {
    print("Obesidade Grau 3");
  }
}

import 'dart:io';

main() 
{
  calculoIMC();
}

calculoIMC()
{
  print("===============Digite o peso=================");
  String user_peso = stdin.readLineSync()!;
  double peso = double.parse(user_peso);

  print("===============Digite a altura===============");
  String user_altura = stdin.readLineSync()!;
  double altura = double.parse(user_altura);

  double imc = imcCalculo(peso, altura);

  imprimirResultado(imc);

}

double imcCalculo(double peso, double altura)
{
  return peso / (altura * altura);
}

imprimirResultado(double imc)
{
  print("===============RESULTADO=====================");
  if (imc < 18.5) {
    print("Você está a baixo do peso, imc = ");
    print(imc);
  } else if (imc >= 18.5 && imc < 25) {
    print("Você está com peso normal, imc = ");
    print(imc);
  } else if (imc >= 25 && imc < 30) {
    print("Você está com sobre peso, imc = ");
    print(imc);
  } else if (imc >= 30 && imc < 35) {
    print("Você está com obesidade do tipo 1, imc = ");
    print(imc);
  } else if (imc >= 35 && imc < 40) {
    print("Você está com obesidade do tipo 2, imc = ");
    print(imc);
  } else {
    print("Você está com obesidade do tipo 3, imc = ");
    print(imc);
  }
}

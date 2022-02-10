import 'dart:io';

main() {
  print("Digite a sua idade:");
  var input = stdin.readLineSync()!;

  var idade = int.parse(input);

  if (idade >= 18) {
    print("É maior de idade");
  } else {
    print("Não é maior de idade");
  }
}

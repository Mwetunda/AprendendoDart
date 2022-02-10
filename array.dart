import 'dart:io';

main() {
  adicionarList();
}

adicionarList() {
  var name = [];

  bool condicao = true;

  while (condicao) {
    print("Digite o texto:");

    String texto = stdin.readLineSync()!;

    if (texto == "sair") {
      condicao = false;
      print("==========Sair============");
    } else {
      name.add(texto);
    }
    print("$name");
    print("\n");
  }
}

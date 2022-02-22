import 'dart:io';

main() {
  //adicionarList();

  var names = ["Manuel Muetunda", "Witney de Sousa"];

  names.add("Josmar de Sousa Muetunda");
  names.add("Wilma de Sousa Muetunda");
  names.add("Ely de Sousa Muetunda");

  print(names.length);
  print(names.reversed);
  print(names.hashCode);
  print(names.runtimeType);
  print(names.first);
  print(names.isEmpty);
  print(names.isNotEmpty);
  print(names.iterator);
  print(names.last);
  print("\n");

  names.removeAt(3);

  print(names);
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

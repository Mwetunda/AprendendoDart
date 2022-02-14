import 'dart:io';

List<String> Lista = [];
void main(List<String> args) {
  bool condicao = true;
  while (condicao) {
    print("=========Adicione o produto ao carrinho==========");
    String text = stdin.readLineSync()!;
    if (text == "Sair") {
      print("==========Programa encerrado============");
      condicao = false;
    } else if (text == "Imprimir") {
      imprimir();
    } else if (text == "Remover") {
      imprimir();
      remover();
    } else {
      Lista.add(text);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

imprimir() {
  for (var i = 0; i < Lista.length; i++) {
    print("Tem $i - ${Lista[i]}");
  }
}

remover() {
  print("Qual produto quer eliminar:");
  String itemTest = stdin.readLineSync()!;
  int item = int.parse(itemTest);
  Lista.removeAt(item);
}

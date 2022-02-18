import 'dart:io';

void main(List<String> args) {
  MapDinamic();
}

void MapStactic() {
  Map<String, dynamic> maps = {
    "nome": "Manuel Muetunda",
    "idade": 24,
    "cidade": "Luanda"
  };
  //maps["nome"] = "Witney de Sousa Rodrigues";
  print(maps["nome"]);
}

void MapDinamic() {
  List<Map<String, dynamic>> cadastros = [];
  Map<String, dynamic> cadastro = {};

  print("Digite o seu nome:");
  cadastro["nome"] = stdin.readLineSync()!;

  print("Digite a sua idade:");
  cadastro["idade"] = int.parse(stdin.readLineSync()!);

  print("Digite a sua cidade:");
  cadastro["cidade"] = stdin.readLineSync()!;

  print(cadastro);
}

import 'dart:convert';
import 'dart:io';

class Utilidade {
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double lerDouble() {
    var valor = lerString();
    try {
      return double.parse(valor);
    } on Exception catch (e) {
      print('Tipo de entrada inválida.');
      return 0;
    }
  }
}

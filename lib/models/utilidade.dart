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
    } catch (e) {
      return 0;
    }
  }
}

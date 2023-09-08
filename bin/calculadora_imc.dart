import 'dart:convert';

import 'package:calculadora_imc/calculadora_imc.dart' as calculadora_imc;
import 'package:calculadora_imc/models/Pessoa.dart';

void main(List<String> arguments) {
  Pessoa p1 = new Pessoa("maria", 74, 1.65);
  p1.classificacaoImc();
}

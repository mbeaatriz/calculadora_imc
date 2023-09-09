import 'dart:convert';
import 'dart:io';
import 'package:calculadora_imc/calculadora_imc.dart' as calculadora_imc;
import 'package:calculadora_imc/models/pessoa.dart';
import 'package:calculadora_imc/models/utilidade.dart';

void main(List<String> arguments) {
  print("Digite seu nome:");
  String? nome = Utilidade.lerString();

  print("Digite seu peso (em kg):");
  double? peso = Utilidade.lerDouble();

  print("Digite sua altura (em metros)");
  double? altura = Utilidade.lerDouble();

  Pessoa pessoa = Pessoa(nome, peso, altura);
  print(pessoa.classificacaoImc());
}

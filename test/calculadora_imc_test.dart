import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('classificação IMC: magreza grave', () {
    Pessoa pessoa = Pessoa("Nome", 35, 1.60);
    expect(pessoa.classificacaoImc(), "Você está com: magreza grave.");
  });
  test('classificação IMC: magreza moderada', () {
    Pessoa pessoa = Pessoa("Nome", 45, 1.65);
    expect(pessoa.classificacaoImc(), "Você está com: magreza moderada.");
  });
  test('classificação IMC: magreza leve', () {
    Pessoa pessoa = Pessoa("Nome", 50, 1.70);
    expect(pessoa.classificacaoImc(), "Você está com: magreza leve.");
  });
  test('classificação IMC: saudável', () {
    Pessoa pessoa = Pessoa("Nome", 70, 1.75);
    expect(pessoa.classificacaoImc(), "Você está: saudável.");
  });
  test('classificação IMC: sobrepeso', () {
    Pessoa pessoa = Pessoa("Nome", 85, 1.80);
    expect(pessoa.classificacaoImc(), "Você está com: sobrepeso.");
  });
  test('classificação IMC: obesidade grau 1', () {
    Pessoa pessoa = Pessoa("Nome", 95, 1.70);
    expect(pessoa.classificacaoImc(), "Você está com: obesidade grau 1.");
  });
  test('classificação IMC: obesidade grau 2 (severa)', () {
    Pessoa pessoa = Pessoa("Nome", 105, 1.65);
    expect(
        pessoa.classificacaoImc(), "Você está com: obesidade grau 2 (severa).");
  });
  test('classificação IMC: obesidade grau 3 (mórmida)', () {
    Pessoa pessoa = Pessoa("Nome", 120, 1.60);
    expect(pessoa.classificacaoImc(),
        "Você está com: obesidade grau 3 (mórmida).");
  });
}

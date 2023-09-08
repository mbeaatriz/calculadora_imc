class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  double calcularImc() {
    return _peso / (_altura * _altura);
  }

  void classificacaoImc() {
    double imc = calcularImc();
    switch (imc) {
      case < 16:
        print("Magreza grave.");
        break;
      case >= 16 && < 17:
        print("Magreza moderada.");
        break;
      case >= 17 && < 18.5:
        print("Magreza leve.");
        break;
      case >= 18.5 && < 25:
        print("Saudável.");
        break;
      case >= 25 && < 30:
        print("Sobrepeso.");
        break;
      case >= 30 && < 35:
        print("Obesidade grau 1.");
        break;
      case >= 35 && < 40:
        print("Obesidade grau 2 (severa).");
        break;
      case >= 40:
        print("Obesidade grau 3 (mórmida).");
        break;
      default:
        print("N/D");
    }
  }
}

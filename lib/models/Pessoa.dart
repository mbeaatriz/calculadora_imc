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
        print("Você está com: magreza grave.");
        break;
      case >= 16 && < 17:
        print("Você está com: magreza moderada.");
        break;
      case >= 17 && < 18.5:
        print("Você está com: magreza leve.");
        break;
      case >= 18.5 && < 25:
        print("Você está: saudável.");
        break;
      case >= 25 && < 30:
        print("Você está com: sobrepeso.");
        break;
      case >= 30 && < 35:
        print("Você está com: obesidade grau 1.");
        break;
      case >= 35 && < 40:
        print("Você está com: obesidade grau 2 (severa).");
        break;
      case >= 40:
        print("Você está com: obesidade grau 3 (mórmida).");
        break;
      default:
        print("N/D");
    }
  }
}

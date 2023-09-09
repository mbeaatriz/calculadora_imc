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

  String classificacaoImc() {
    double imc = calcularImc();
    String retorno = "N/D";
    switch (imc) {
      case < 16:
        retorno = "Você está com: magreza grave.";

      case >= 16 && < 17:
        retorno = "Você está com: magreza moderada.";

      case >= 17 && < 18.5:
        retorno = "Você está com: magreza leve.";

      case >= 18.5 && < 25:
        retorno = "Você está: saudável.";

      case >= 25 && < 30:
        retorno = "Você está com: sobrepeso.";

      case >= 30 && < 35:
        retorno = "Você está com: obesidade grau 1.";

      case >= 35 && < 40:
        retorno = "Você está com: obesidade grau 2 (severa).";

      case >= 40:
        retorno = "Você está com: obesidade grau 3 (mórmida).";
    }
    return retorno;
  }
}

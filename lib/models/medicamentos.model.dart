class Medicamentos {
  String principioAtivo;
  String laboratorioCnpj;
  String laboratorioNome;
  int laboratorioRegistro;
  String eAN1;
  String nome;
  String apresentacao;
  String classeTerapeutica;
  String tipoProduto;
  String precoFabrica;
  String precoConsumidor0;
  String precoConsumidor12;
  String precoConsumidor17;
  String precoConsumidor20;
  String restricaoHospitalar;
  String tarja;

  Medicamentos(
      {this.principioAtivo,
      this.laboratorioCnpj,
      this.laboratorioNome,
      this.laboratorioRegistro,
      this.eAN1,
      this.nome,
      this.apresentacao,
      this.classeTerapeutica,
      this.tipoProduto,
      this.precoFabrica,
      this.precoConsumidor0,
      this.precoConsumidor12,
      this.precoConsumidor17,
      this.precoConsumidor20,
      this.restricaoHospitalar,
      this.tarja});

  Medicamentos.fromJson(Map<String, dynamic> json) {
    principioAtivo = json['principioAtivo'];
    laboratorioCnpj = json['laboratorioCnpj'];
    laboratorioNome = json['laboratorioNome'];
    eAN1 = json['EAN1'];
    nome = json['nome'];
    apresentacao = json['apresentacao'];
    classeTerapeutica = json['classeTerapeutica'];
    tipoProduto = json['tipoProduto'];
    precoFabrica = json['precoFabrica'];
    precoConsumidor0 = json['precoConsumidor0'];
    precoConsumidor12 = json['precoConsumidor12'];
    precoConsumidor17 = json['precoConsumidor17'];
    precoConsumidor20 = json['precoConsumidor20'];
    restricaoHospitalar = json['restricaoHospitalar'];
    tarja = json['tarja'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['principioAtivo'] = this.principioAtivo;
    data['laboratorioCnpj'] = this.laboratorioCnpj;
    data['laboratorioNome'] = this.laboratorioNome;
    data['laboratorioRegistro'] = this.laboratorioRegistro;
    data['EAN1'] = this.eAN1;
    data['nome'] = this.nome;
    data['apresentacao'] = this.apresentacao;
    data['classeTerapeutica'] = this.classeTerapeutica;
    data['tipoProduto'] = this.tipoProduto;
    data['precoFabrica'] = this.precoFabrica;
    data['precoConsumidor0'] = this.precoConsumidor0;
    data['precoConsumidor12'] = this.precoConsumidor12;
    data['precoConsumidor17'] = this.precoConsumidor17;
    data['precoConsumidor20'] = this.precoConsumidor20;
    data['restricaoHospitalar'] = this.restricaoHospitalar;
    data['tarja'] = this.tarja;
    return data;
  }
}

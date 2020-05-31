class BoletimApi {
  List<Data> data;

  BoletimApi({this.data});

  BoletimApi.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int boletimId;
  int discId;
  int alunoId;
  int nota1;
  int nota2;
  int nota3;
  int nota4;

  Data(
      {this.boletimId,
      this.discId,
      this.alunoId,
      this.nota1,
      this.nota2,
      this.nota3,
      this.nota4});

  Data.fromJson(Map<String, dynamic> json) {
    boletimId = json['boletim_id'];
    discId = json['disc_id'];
    alunoId = json['aluno_id'];
    nota1 = json['nota1'];
    nota2 = json['nota2'];
    nota3 = json['nota3'];
    nota4 = json['nota4'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['boletim_id'] = this.boletimId;
    data['disc_id'] = this.discId;
    data['aluno_id'] = this.alunoId;
    data['nota1'] = this.nota1;
    data['nota2'] = this.nota2;
    data['nota3'] = this.nota3;
    data['nota4'] = this.nota4;
    return data;
  }
}

class UserApi {
  List<Data> data;

  UserApi({this.data});

  UserApi.fromJson(Map<String, dynamic> json) {
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
  int alunoId;
  String matAluno;
  int paiId;
  int cdTurma;
  String nome;
  String senha;

  Data(
      {this.alunoId,
      this.matAluno,
      this.paiId,
      this.cdTurma,
      this.nome,
      this.senha});

  Data.fromJson(Map<String, dynamic> json) {
    alunoId = json['aluno_id'];
    matAluno = json['mat_aluno'];
    paiId = json['pai_id'];
    cdTurma = json['cd_turma'];
    nome = json['nome'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aluno_id'] = this.alunoId;
    data['mat_aluno'] = this.matAluno;
    data['pai_id'] = this.paiId;
    data['cd_turma'] = this.cdTurma;
    data['nome'] = this.nome;
    data['senha'] = this.senha;
    return data;
  }
}

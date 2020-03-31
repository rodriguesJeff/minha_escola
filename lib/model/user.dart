import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert';

var storage = FlutterSecureStorage();

var jwt = storage.read(key: 'jwt');

Map header = {
  'x-access-token' : jwt
};

Future<UserApi> fetchUser() async {
  var response = await http.get(
    'http://localhost:3000/api/login',
    headers: header
  );

  if (response.statusCode == 200) {
    var res = json.decode(response.body);
    return UserApi.fromJson(res);
  }
  else {
    throw Exception('Erro ao buscar dados do usuario');
  }

}

class UserApi {
  int alunoId;
  String matAluno;
  int paiId;
  int cdTurma;
  String nome;
  String senha;
  Null informacoes;

  UserApi(
      {this.alunoId,
      this.matAluno,
      this.paiId,
      this.cdTurma,
      this.nome,
      this.senha,
      this.informacoes});

  UserApi.fromJson(Map<String, dynamic> json) {
    alunoId = json['aluno_id'];
    matAluno = json['mat_aluno'];
    paiId = json['pai_id'];
    cdTurma = json['cd_turma'];
    nome = json['nome'];
    senha = json['senha'];
    informacoes = json['informacoes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aluno_id'] = this.alunoId;
    data['mat_aluno'] = this.matAluno;
    data['pai_id'] = this.paiId;
    data['cd_turma'] = this.cdTurma;
    data['nome'] = this.nome;
    data['senha'] = this.senha;
    data['informacoes'] = this.informacoes;
    return data;
  }
}

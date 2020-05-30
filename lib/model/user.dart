
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<UserApi> loadUser() async {

    Dio _dio = Dio();

    final prefs = await SharedPreferences.getInstance();

    String jwt = (prefs.getString('token'));
    print(jwt);

    if (jwt != null){
      final response = await _dio.get(
        'http://localhost:3000/api/data',
        options: Options(
          headers: {
            'x-access-token': jwt
          }
        ),
      );

      if (response.statusCode == 200){
        print(response.data['data']);
        return UserApi.fromJson(response.data['data'][0]);
      }
      else {
        throw Exception('Erro ao buscar dados do usuarios');
      }
    } else {
      print('error');
      return throw Exception('JWT invalida');
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

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'altera_senha_controller.g.dart';

class AlteraSenhaController = _AlteraSenhaControllerBase with _$AlteraSenhaController;

abstract class _AlteraSenhaControllerBase with Store {
  @observable 
  String _senha;
  @observable
  String _novasenha;

  @observable 
  bool success = false;

  @action 
  Future<bool> alterarSenha(_senha, _novasenha) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Dio _dio = Dio();

    var token = prefs.getString('token');

    Map _data = {
      'senha' : _senha,
      'novasenha': _novasenha
    };

    var _body = json.encode(_data);

    var response = await _dio.post(
      'http://localhost:3000/api/alterasenha',
      data: _body,
      options: Options(
        headers: {
          'x-access-token': token
        }
      )
    );

    if (response.statusCode == 200) {  
      return true;
    } else {
      return false;
    }
  }
}
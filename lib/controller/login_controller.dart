import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';

part 'login_controller.g.dart';

class LoginApi = _LoginApi with _$LoginApi;

abstract class _LoginApi with Store {
  @observable
  String mat;
  String pass;

  @observable
  Dio dio = Dio();

  @action
  Future<String> auth(mat, pass) async {

    Map params = {
      'matricula' : mat,
      'senha': pass
    };

    var _body = json.encode(params);

    var res = await dio.post(
      'http://localhost:3000/api/login', 
      data: _body,
    );

    var jwt = res.data['token']; 

    return jwt;
  }
}
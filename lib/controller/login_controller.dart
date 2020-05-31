import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';

import 'package:shared_preferences/shared_preferences.dart';

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

    var prefs = await SharedPreferences.getInstance();

    Map params = {
      'matricula' : mat,
      'senha': pass
    };

    var _body = json.encode(params);

    var res = await dio.post(
      'http://localhost:3000/api/login', 
      data: _body,
    );

    switch (res.statusCode){
      case 200:
        var jwt = res.data['token']; 
        prefs.setString('token', res.data['token']);
        return jwt;
      break;
      case 404:
        var jwt = '';
        return jwt;
      break;
      default:
        return null;
      break;
    }
  }
}
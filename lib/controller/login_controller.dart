import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../core.dart';

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

    try {
      var prefs = await SharedPreferences.getInstance();

      Map params = {
        'matricula' : mat,
        'senha': pass
      };

      var _body = json.encode(params);

      var res = await dio.post(
        Core.baseUrl + '/login', 
        data: _body,
      );

      var jwt = res.data['token'];
      prefs.setString('token', res.data['token']);
      return jwt;
    } on DioError catch (e) {
      if (e.response.statusCode == 404) {
        print(e.response.statusCode);
        print(e.response.statusMessage);
        var jwt = '';
        return jwt;
      } else {
        print(e.message);
        print(e.request);
        var jwt = '';
        return jwt;
      }
    }


  }
}
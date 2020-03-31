import 'dart:convert';
import 'package:minha_escola/model/user.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


part 'userApiStore.g.dart';

class UserApiStore = _UserApiStoreBase with _$UserApiStore;

abstract class _UserApiStoreBase with Store {
  @observable
  UserApi userApi;

  @observable 
  var storage = FlutterSecureStorage();

  @action
  fetchUser(){
    userApi = null;
    loadUser().then((userList) {
      userApi = userList;
    });
  }

  Future<UserApi> loadUser() async {

    var jwt = await storage.read(key: "jwt");

    try {
      Map header = {
        'x-access-token': jwt
      };

      final res = await http.get(
        'http://localhost:3000/api/data',
        headers: header
      );

      var decodeJson = jsonDecode(res.body);
      return UserApi.fromJson(decodeJson);

    } catch (error) {
      print('Erro ao carregar a pagina');
      return null;
    }
  }
}
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:minha_escola/app/repositories/login_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {

  final LoginRepository repository;

  LoginController({ @required this.repository }): assert (repository != null);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<bool> login(mat, pass) async {

    var response = await repository.login(mat, pass);

    if (response.statusCode == 200){
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', response.body['token']);
      return true;
    } else {
      return false;
    }
  }

}

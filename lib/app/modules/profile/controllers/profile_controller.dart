import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:minha_escola/app/data/user_model.dart';
import 'package:minha_escola/app/repositories/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController with StateMixin<Data>{

  final UserRepository repository;

  ProfileController({ @required this.repository }) : assert(repository != null);

  @override
  void onInit() async {
    super.onInit();
    await repository.getUserData().then((user) {
      Data userData = user;
      change(userData, status: RxStatus.success());
    }, onError: (e) {
      change(null, status: RxStatus.error(e));
    }
    
    );
  }

  /*final _userModel = Data().obs;
  Data get userModel => _userModel.value;
  set userModel(value) => _userModel.value = value;

  getUserData() async {
    var user = await repository.getUserData();
    userModel = user;
  }  */

  void exit() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', null);
    if (prefs.getString('token') == null){
      Get.offAllNamed('/initial');
    }
  }
}

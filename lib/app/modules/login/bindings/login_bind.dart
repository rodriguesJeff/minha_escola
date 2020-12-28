import 'package:get/get.dart';
import 'package:minha_escola/app/modules/login/controllers/login_controller.dart';
import 'package:minha_escola/app/repositories/login_repository.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() {
      return LoginController(
        repository: LoginRepository()
      );
    });
  }
}
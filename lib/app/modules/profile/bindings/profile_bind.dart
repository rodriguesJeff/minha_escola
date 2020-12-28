import 'package:get/get.dart';
import 'package:minha_escola/app/modules/profile/controllers/profile_controller.dart';
import 'package:minha_escola/app/repositories/user_repository.dart';

class ProfileBinding extends Bindings {
  @override 
  void dependencies() {
    Get.lazyPut<ProfileController>(() {
      return ProfileController(
        repository: UserRepository()
      );
    });
  }
}
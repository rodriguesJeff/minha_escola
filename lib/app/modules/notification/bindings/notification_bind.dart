import 'package:get/get.dart';
import 'package:minha_escola/app/modules/notification/controllers/notification_controller.dart';
import 'package:minha_escola/app/repositories/notification_repository.dart';

class NotificationBindings extends Bindings {
  @override 
  void dependencies() {
    Get.put(() => NotificationRepository());
    Get.lazyPut<NotificationController>(() {
      return NotificationController(
        repository: NotificationRepository()
      );
    });
  }
}
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:minha_escola/app/data/notification_model.dart';
import 'package:minha_escola/app/repositories/notification_repository.dart';

class NotificationController extends GetxController {
  final NotificationRepository repository;

  NotificationController({@required this.repository}): assert(repository != null);

  @override
  void onInit() {
    getNotifications();
    super.onInit();
  }

  final _notification = List<NotificationModel>().obs;
  List<NotificationModel> get notification => _notification;
  set notification(value) => _notification.value = value;

  getNotifications() async {
    var response = await repository.getNotifications();
    notification = response;
  }

}
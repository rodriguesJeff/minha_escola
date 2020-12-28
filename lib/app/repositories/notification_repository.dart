import 'package:get/get_connect/connect.dart';
import 'package:minha_escola/app/data/notification_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationRepository extends GetConnect {
  Future<List<NotificationModel>> getNotifications() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    final response = await get(
      'http://127.0.0.1:8080/api/student/notifications',
      headers: {
        'Authorization': 'Bearer $token'
      },   
    );

    if (response.hasError){
      throw Exception(response.statusText);
    }

    return response.body;
  }
}
import 'package:dio/dio.dart';
import 'package:minha_escola/model/notifications.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core.dart';
part 'notifications_controller.g.dart';

class NotificationsController = _NotificationsControllerBase with _$NotificationsController;

abstract class _NotificationsControllerBase with Store {
  
  @observable 
  NotificationsApi _notificationsApi;

  @computed 
  NotificationsApi get notificationsApi => _notificationsApi;

  @action 
  fetchNotificationsList() {
    loadNotifications().then(
      (notificationsList) {
        _notificationsApi = notificationsList;
      }
    );
  }

  Future<NotificationsApi> loadNotifications() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String jwt = prefs.getString('token');

    Dio dio = Dio();

    try {
      if (jwt != null ) {
          final response = await dio.get(
          Core.baseUrl + '/notifications',
          options: Options(
            headers: {
              'x-access-token': jwt
            }
          )
        );

        if (response.statusCode == 200) {
          //return NotificationsApi.fromJson(response.data['data'][0]);
          print(response.data['data']);
          return NotificationsApi.fromJson(response.data);
        } else {
          throw Exception('Erro ao buscar notificacos do usuario');
        }
      } else {
        return throw Exception('JWT invalido');
      }
    } catch (error, stacktrace) {
      print ('Err ao carregar ' + stacktrace.toString());
      return null;
    }
  }

}
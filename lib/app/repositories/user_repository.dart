import 'package:get/get.dart';
import 'package:minha_escola/app/data/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepository extends GetConnect {

  Future<Data> getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    final response = await get<Data>(
      'http://127.0.0.1:8080/api/student/data',
      headers: {
        'Authorization': 'Bearer $token'
      },
      decoder: (user) => Data.fromJson(user['data'])
    );

    if (response.hasError){
      throw Exception(response.statusText);
    }

    return response.body;
  }
}
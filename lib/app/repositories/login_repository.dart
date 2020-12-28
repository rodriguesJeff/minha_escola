import 'package:get/get_connect/connect.dart';

class LoginRepository extends GetConnect {
  
  login(mat, pass) async {
    Map data = {
      "mat": mat,
      "pass": pass
    };

    return await post('http://127.0.0.1:8080/api/student/login', data); 
  }
  
}
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class AuthRepository {
  Future<void> login(String matricula, String password) async {
    final parseUser = ParseUser(matricula, password, null);

    final response = await parseUser.login();

    print(response.success);
  }
}

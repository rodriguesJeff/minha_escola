import 'package:dio/dio.dart';
import 'package:minha_escola/model/user.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core.dart';
part 'dados_controller.g.dart';

class DadosController = _DadosControllerBase with _$DadosController;

abstract class _DadosControllerBase with Store {
  @observable 
  var jwt = '';

  @observable 
  UserApi _userApi;

  @computed 
  UserApi get userApi => _userApi;

  @action 
  fetchData() {
    loadUser().then(
      (dataUser) {
        _userApi = dataUser;
      }
    );
  }

  @action 
  Future<UserApi> loadUser() async {

    Dio _dio = Dio();

    final prefs = await SharedPreferences.getInstance();

    String jwt = (prefs.getString('token'));
    print(jwt);

    if (jwt != null){
      final response = await _dio.get(
        Core.baseUrl + '/data',
        options: Options(
          headers: {
            'x-access-token': jwt
          }
        ),
      );

      if (response.statusCode == 200){
        //print(response.data['data'][0]);
        return UserApi.fromJson(response.data);
      }
      else {
        throw Exception('Erro ao buscar dados do usuarios');
      }
    } else {
      print('error');
      return throw Exception('JWT invalida');
    }
  }

}
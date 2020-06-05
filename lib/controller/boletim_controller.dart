import 'package:dio/dio.dart';
import 'package:minha_escola/model/boletim.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core.dart';


part 'boletim_controller.g.dart';

class BoletimController = _BoletimControllerBase with _$BoletimController;

abstract class _BoletimControllerBase with Store {
  @observable 
  BoletimApi _boletimApi;

  @computed 
  BoletimApi get boletimApi => _boletimApi;

  @action 
  fetchBoletim() {
    loadBoletim().then(
      (boletimList) {
        _boletimApi = boletimList;
      }
    );
  }

  @action 
  Future<BoletimApi> loadBoletim() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var jwt = prefs.getString('token');

    Dio _dio = Dio();

    try {


      if (jwt != null) {

        final response = await _dio.get(
          Core.baseUrl + '/boletim',
          options: Options(
            headers: {
              'x-access-token': jwt
            }
          )
        );

        if (response.statusCode == 200) {
          
          print(response.data);
          return BoletimApi.fromJson(response.data);

        } else {
          return throw Exception('Erro ao buscar dados do usuario no boletim');
        }

      } else {
        return throw Exception('Erro ao validar JWT, faça login novamente');
      }


    } catch (error) {
      print(error);
      return null;
    }
  }
}
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'userApiStore.g.dart';

class UserApiStore = _UserApiStoreBase with _$UserApiStore;

abstract class _UserApiStoreBase with Store {
  @observable 
  Dio dio = Dio();

  @observable 
  String jwt = '';
}
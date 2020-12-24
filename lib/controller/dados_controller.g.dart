// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dados_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DadosController on _DadosControllerBase, Store {
  Computed<UserApi> _$userApiComputed;

  @override
  UserApi get userApi =>
      (_$userApiComputed ??= Computed<UserApi>(() => super.userApi,
              name: '_DadosControllerBase.userApi'))
          .value;

  final _$jwtAtom = Atom(name: '_DadosControllerBase.jwt');

  @override
  String get jwt {
    _$jwtAtom.reportRead();
    return super.jwt;
  }

  @override
  set jwt(String value) {
    _$jwtAtom.reportWrite(value, super.jwt, () {
      super.jwt = value;
    });
  }

  final _$_userApiAtom = Atom(name: '_DadosControllerBase._userApi');

  @override
  UserApi get _userApi {
    _$_userApiAtom.reportRead();
    return super._userApi;
  }

  @override
  set _userApi(UserApi value) {
    _$_userApiAtom.reportWrite(value, super._userApi, () {
      super._userApi = value;
    });
  }

  final _$loadUserAsyncAction = AsyncAction('_DadosControllerBase.loadUser');

  @override
  Future<UserApi> loadUser() {
    return _$loadUserAsyncAction.run(() => super.loadUser());
  }

  final _$_DadosControllerBaseActionController =
      ActionController(name: '_DadosControllerBase');

  @override
  dynamic fetchData() {
    final _$actionInfo = _$_DadosControllerBaseActionController.startAction(
        name: '_DadosControllerBase.fetchData');
    try {
      return super.fetchData();
    } finally {
      _$_DadosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
jwt: ${jwt},
userApi: ${userApi}
    ''';
  }
}

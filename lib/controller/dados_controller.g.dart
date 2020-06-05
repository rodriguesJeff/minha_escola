// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dados_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DadosController on _DadosControllerBase, Store {
  Computed<UserApi> _$userApiComputed;

  @override
  UserApi get userApi =>
      (_$userApiComputed ??= Computed<UserApi>(() => super.userApi)).value;

  final _$jwtAtom = Atom(name: '_DadosControllerBase.jwt');

  @override
  String get jwt {
    _$jwtAtom.context.enforceReadPolicy(_$jwtAtom);
    _$jwtAtom.reportObserved();
    return super.jwt;
  }

  @override
  set jwt(String value) {
    _$jwtAtom.context.conditionallyRunInAction(() {
      super.jwt = value;
      _$jwtAtom.reportChanged();
    }, _$jwtAtom, name: '${_$jwtAtom.name}_set');
  }

  final _$_userApiAtom = Atom(name: '_DadosControllerBase._userApi');

  @override
  UserApi get _userApi {
    _$_userApiAtom.context.enforceReadPolicy(_$_userApiAtom);
    _$_userApiAtom.reportObserved();
    return super._userApi;
  }

  @override
  set _userApi(UserApi value) {
    _$_userApiAtom.context.conditionallyRunInAction(() {
      super._userApi = value;
      _$_userApiAtom.reportChanged();
    }, _$_userApiAtom, name: '${_$_userApiAtom.name}_set');
  }

  final _$loadUserAsyncAction = AsyncAction('loadUser');

  @override
  Future<UserApi> loadUser() {
    return _$loadUserAsyncAction.run(() => super.loadUser());
  }

  final _$_DadosControllerBaseActionController =
      ActionController(name: '_DadosControllerBase');

  @override
  dynamic fetchData() {
    final _$actionInfo = _$_DadosControllerBaseActionController.startAction();
    try {
      return super.fetchData();
    } finally {
      _$_DadosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'jwt: ${jwt.toString()},userApi: ${userApi.toString()}';
    return '{$string}';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userApiStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserApiStore on _UserApiStoreBase, Store {
  final _$userApiAtom = Atom(name: '_UserApiStoreBase.userApi');

  @override
  UserApi get userApi {
    _$userApiAtom.context.enforceReadPolicy(_$userApiAtom);
    _$userApiAtom.reportObserved();
    return super.userApi;
  }

  @override
  set userApi(UserApi value) {
    _$userApiAtom.context.conditionallyRunInAction(() {
      super.userApi = value;
      _$userApiAtom.reportChanged();
    }, _$userApiAtom, name: '${_$userApiAtom.name}_set');
  }

  @override
  String toString() {
    final string = 'userApi: ${userApi.toString()}';
    return '{$string}';
  }
}

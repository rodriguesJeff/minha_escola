// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userApiStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserApiStore on _UserApiStoreBase, Store {
  final _$dioAtom = Atom(name: '_UserApiStoreBase.dio');

  @override
  Dio get dio {
    _$dioAtom.context.enforceReadPolicy(_$dioAtom);
    _$dioAtom.reportObserved();
    return super.dio;
  }

  @override
  set dio(Dio value) {
    _$dioAtom.context.conditionallyRunInAction(() {
      super.dio = value;
      _$dioAtom.reportChanged();
    }, _$dioAtom, name: '${_$dioAtom.name}_set');
  }

  final _$jwtAtom = Atom(name: '_UserApiStoreBase.jwt');

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

  @override
  String toString() {
    final string = 'dio: ${dio.toString()},jwt: ${jwt.toString()}';
    return '{$string}';
  }
}

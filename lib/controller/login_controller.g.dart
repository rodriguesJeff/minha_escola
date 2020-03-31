// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginApi on _LoginApi, Store {
  final _$matAtom = Atom(name: '_LoginApi.mat');

  @override
  String get mat {
    _$matAtom.context.enforceReadPolicy(_$matAtom);
    _$matAtom.reportObserved();
    return super.mat;
  }

  @override
  set mat(String value) {
    _$matAtom.context.conditionallyRunInAction(() {
      super.mat = value;
      _$matAtom.reportChanged();
    }, _$matAtom, name: '${_$matAtom.name}_set');
  }

  final _$dioAtom = Atom(name: '_LoginApi.dio');

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

  final _$authAsyncAction = AsyncAction('auth');

  @override
  Future<String> auth(dynamic mat, dynamic pass) {
    return _$authAsyncAction.run(() => super.auth(mat, pass));
  }

  @override
  String toString() {
    final string = 'mat: ${mat.toString()},dio: ${dio.toString()}';
    return '{$string}';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginApi on _LoginApi, Store {
  final _$matAtom = Atom(name: '_LoginApi.mat');

  @override
  String get mat {
    _$matAtom.reportRead();
    return super.mat;
  }

  @override
  set mat(String value) {
    _$matAtom.reportWrite(value, super.mat, () {
      super.mat = value;
    });
  }

  final _$dioAtom = Atom(name: '_LoginApi.dio');

  @override
  Dio get dio {
    _$dioAtom.reportRead();
    return super.dio;
  }

  @override
  set dio(Dio value) {
    _$dioAtom.reportWrite(value, super.dio, () {
      super.dio = value;
    });
  }

  final _$authAsyncAction = AsyncAction('_LoginApi.auth');

  @override
  Future<String> auth(dynamic mat, dynamic pass) {
    return _$authAsyncAction.run(() => super.auth(mat, pass));
  }

  @override
  String toString() {
    return '''
mat: ${mat},
dio: ${dio}
    ''';
  }
}

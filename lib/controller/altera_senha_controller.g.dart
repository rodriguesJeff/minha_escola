// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'altera_senha_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AlteraSenhaController on _AlteraSenhaControllerBase, Store {
  final _$_senhaAtom = Atom(name: '_AlteraSenhaControllerBase._senha');

  @override
  String get _senha {
    _$_senhaAtom.reportRead();
    return super._senha;
  }

  @override
  set _senha(String value) {
    _$_senhaAtom.reportWrite(value, super._senha, () {
      super._senha = value;
    });
  }

  final _$_novasenhaAtom = Atom(name: '_AlteraSenhaControllerBase._novasenha');

  @override
  String get _novasenha {
    _$_novasenhaAtom.reportRead();
    return super._novasenha;
  }

  @override
  set _novasenha(String value) {
    _$_novasenhaAtom.reportWrite(value, super._novasenha, () {
      super._novasenha = value;
    });
  }

  final _$successAtom = Atom(name: '_AlteraSenhaControllerBase.success');

  @override
  bool get success {
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  final _$alterarSenhaAsyncAction =
      AsyncAction('_AlteraSenhaControllerBase.alterarSenha');

  @override
  Future<bool> alterarSenha(dynamic _senha, dynamic _novasenha) {
    return _$alterarSenhaAsyncAction
        .run(() => super.alterarSenha(_senha, _novasenha));
  }

  @override
  String toString() {
    return '''
success: ${success}
    ''';
  }
}

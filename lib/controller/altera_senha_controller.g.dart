// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'altera_senha_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AlteraSenhaController on _AlteraSenhaControllerBase, Store {
  final _$_senhaAtom = Atom(name: '_AlteraSenhaControllerBase._senha');

  @override
  String get _senha {
    _$_senhaAtom.context.enforceReadPolicy(_$_senhaAtom);
    _$_senhaAtom.reportObserved();
    return super._senha;
  }

  @override
  set _senha(String value) {
    _$_senhaAtom.context.conditionallyRunInAction(() {
      super._senha = value;
      _$_senhaAtom.reportChanged();
    }, _$_senhaAtom, name: '${_$_senhaAtom.name}_set');
  }

  final _$_novasenhaAtom = Atom(name: '_AlteraSenhaControllerBase._novasenha');

  @override
  String get _novasenha {
    _$_novasenhaAtom.context.enforceReadPolicy(_$_novasenhaAtom);
    _$_novasenhaAtom.reportObserved();
    return super._novasenha;
  }

  @override
  set _novasenha(String value) {
    _$_novasenhaAtom.context.conditionallyRunInAction(() {
      super._novasenha = value;
      _$_novasenhaAtom.reportChanged();
    }, _$_novasenhaAtom, name: '${_$_novasenhaAtom.name}_set');
  }

  final _$successAtom = Atom(name: '_AlteraSenhaControllerBase.success');

  @override
  bool get success {
    _$successAtom.context.enforceReadPolicy(_$successAtom);
    _$successAtom.reportObserved();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.context.conditionallyRunInAction(() {
      super.success = value;
      _$successAtom.reportChanged();
    }, _$successAtom, name: '${_$successAtom.name}_set');
  }

  final _$alterarSenhaAsyncAction = AsyncAction('alterarSenha');

  @override
  Future<bool> alterarSenha(dynamic _senha, dynamic _novasenha) {
    return _$alterarSenhaAsyncAction
        .run(() => super.alterarSenha(_senha, _novasenha));
  }

  @override
  String toString() {
    final string = 'success: ${success.toString()}';
    return '{$string}';
  }
}

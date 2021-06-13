// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginPageController on _LoginPageController, Store {
  Computed<bool> _$isMatriculaValidComputed;

  @override
  bool get isMatriculaValid => (_$isMatriculaValidComputed ??= Computed<bool>(
          () => super.isMatriculaValid,
          name: '_LoginPageController.isMatriculaValid'))
      .value;
  Computed<bool> _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: '_LoginPageController.isPasswordValid'))
          .value;
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_LoginPageController.isFormValid'))
          .value;

  final _$matriculaAtom = Atom(name: '_LoginPageController.matricula');

  @override
  String get matricula {
    _$matriculaAtom.reportRead();
    return super.matricula;
  }

  @override
  set matricula(String value) {
    _$matriculaAtom.reportWrite(value, super.matricula, () {
      super.matricula = value;
    });
  }

  final _$passwordAtom = Atom(name: '_LoginPageController.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$loadingAtom = Atom(name: '_LoginPageController.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$_loginAsyncAction = AsyncAction('_LoginPageController._login');

  @override
  Future<void> _login() {
    return _$_loginAsyncAction.run(() => super._login());
  }

  final _$_LoginPageControllerActionController =
      ActionController(name: '_LoginPageController');

  @override
  void setMatricula(String value) {
    final _$actionInfo = _$_LoginPageControllerActionController.startAction(
        name: '_LoginPageController.setMatricula');
    try {
      return super.setMatricula(value);
    } finally {
      _$_LoginPageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_LoginPageControllerActionController.startAction(
        name: '_LoginPageController.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginPageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
matricula: ${matricula},
password: ${password},
loading: ${loading},
isMatriculaValid: ${isMatriculaValid},
isPasswordValid: ${isPasswordValid},
isFormValid: ${isFormValid}
    ''';
  }
}

import 'package:minha_escola/features/auth/domain/repositories/auth_repository.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginPageController = _LoginPageController with _$LoginPageController;

abstract class _LoginPageController with Store {
  @observable
  String matricula;

  @action
  void setMatricula(String value) => matricula = value;

  @computed
  bool get isMatriculaValid => matricula != null && matricula.length > 6;
  String get matriculaError {
    if (matricula == null || isMatriculaValid)
      return null;
    else if (matricula == null || matricula.isEmpty)
      return 'Campo obrigatório';
    else
      return 'Este campo está incompleto';
  }

  @observable
  String password;

  @action
  void setPassword(String value) => password = value;

  @computed
  bool get isPasswordValid => password != null && password.length >= 8;
  String get passwordError {
    if (password == null || isPasswordValid)
      return null;
    else if (password == null || password.isEmpty)
      return 'Campo obrigatório';
    else
      return 'Este campo está incompleto';
  }

  @computed
  bool get isFormValid => isMatriculaValid && isPasswordValid;
  Function get loginButtonPressed => isFormValid ? _login : null;

  @observable
  bool loading = false;

  @action
  Future<void> _login() async {
    loading = true;
    await Future.delayed(Duration(seconds: 2));
    AuthRepository().login(matricula, password);
    loading = false;
  }
}

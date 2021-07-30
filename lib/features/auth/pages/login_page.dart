import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:minha_escola/features/auth/pages/login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginPageController loginPageController = LoginPageController();

  final mailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff345D7E),
        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Login Usuário',
                  style: TextStyle(fontSize: 38, color: Colors.white),
                ),
                SizedBox(height: 15),
                Text(
                  '(Alunos e Responsáveis)',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Observer(
                          builder: (_) => TextField(
                            enabled: !loginPageController.loading,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: 'Insira sua matrícula',
                              hintStyle: TextStyle(color: Colors.white),
                              errorText: loginPageController.matriculaError,
                            ),
                            cursorColor: Colors.white,
                            style: TextStyle(color: Colors.white),
                            autocorrect: false,
                            onChanged: loginPageController.setMatricula,
                          ),
                        ),
                        SizedBox(height: 20),
                        Observer(
                          builder: (_) => TextField(
                            enabled: !loginPageController.loading,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: 'Insira sua senha',
                              hintStyle: TextStyle(color: Colors.white),
                              errorText: loginPageController.passwordError,
                            ),
                            cursorColor: Colors.white,
                            style: TextStyle(color: Colors.white),
                            autocorrect: false,
                            obscureText: true,
                            onChanged: loginPageController.setPassword,
                          ),
                        ),
                        SizedBox(height: 20),
                        Observer(
                          builder: (_) => Container(
                            decoration: BoxDecoration(
                                color: loginPageController.isFormValid
                                    ? Color(0xffF8B195)
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: FlatButton(
                              onPressed: loginPageController.loginButtonPressed,
                              child: loginPageController.loading
                                  ? CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors.white),
                                    )
                                  : Text(
                                      "ENTRAR",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: loginPageController.isFormValid
                                            ? Colors.black87
                                            : Colors.white,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                        FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/rec_senha');
                            },
                            child: Text('Esqueci minha senha',
                                style: TextStyle(color: Colors.white)))
                      ]),
                )
              ]),
        )));
  }
}

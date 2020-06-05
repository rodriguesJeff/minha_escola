import 'package:flutter/material.dart';
import 'package:minha_escola/controller/login_controller.dart';
import 'package:minha_escola/ui/perfil.dart';
import 'package:minha_escola/ui/widgets/textField.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final login = LoginApi();

  final mailController = TextEditingController();

  final passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff345D7E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Text(
                'Login Aluno',
                style: TextStyle(
                  fontSize: 38,
                  color: Colors.white
                )
              ),
              SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      textField(mailController, false, 'matrícula', 'matrícula'),
                      SizedBox(height: 10),
                      textField(passController, true, 'senha', 'senha'),
                      SizedBox(height: 10),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffF8B195),
                          borderRadius: BorderRadius.circular(50) 
                        ),
                        child: FlatButton(
                          onPressed: () async {                            
                            if (_formKey.currentState.validate()){
                              var matricula = mailController.text;
                              var senha = passController.text;
                              var jwt = await login.auth(matricula, senha);
                              if (jwt == '' || jwt == null){                                
                                return AlertDialog(
                                  title: Text('Dados não encontrados!')
                                );
                                
                              } else {                                
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Perfil()
                                  )
                                );
                              }
                            }        
                          },
                          child: Icon(
                            Icons.trending_flat,
                            size: 20,
                            color: Color(0xff345D7E) 
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {                          
                          Navigator.pushNamed(context, '/rec_senha');
                        },
                        child: Text(
                          'Esqueci minha senha',
                          style: TextStyle(color: Colors.white)
                        )
                      )
                    ]
                  ),
                ),
              )
            ]
          ),
        )
      )
    );
  }
}
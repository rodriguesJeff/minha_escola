import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:minha_escola/app/modules/login/views/widgets/text_field_widget.dart';
import 'package:minha_escola/app/utils/keys.dart';

class AlterPasswordView extends GetView{

  var passController = Utils.passController;
  var lastPassController = Utils.lastPassController;
  var formKey = Utils.formKey;
  var retypedPassController = Utils.retypedPassController;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff345D7E),
      appBar: AppBar(
        backgroundColor: Color(0xff345D7E),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(height: 40),
                Text(
                  'Alterar senha',
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.white
                  )
                ),
                SizedBox(height: 40),
                textField(lastPassController, true, 'senha antiga', 'senha antiga'),
                SizedBox(height: 10),
                textField(passController, true, 'nova senha', 'nova senha'),
                SizedBox(height: 10),
                textField(passController, true, 'repetir nova senha', 'repetir nova senha'),
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
                    if (formKey.currentState.validate()){
                      var lasPass = lastPassController.text;
                      var pass = passController.text;
                      var retypedPass = retypedPassController.text;
                      if (pass == pass){
                        bool success = 2 + 2 == 4;
                        if (success == true){
                          Navigator.pop(context);
                        } else {
                          final snackBar = SnackBar(
                            content: Text('Falha ao alterar a senha'),
                          );
                          Scaffold.of(context).showSnackBar(snackBar);
                        }
                      } else {
                        final snackBar = SnackBar(
                          content: Text('Senhas nao coincidem'),
                        );
                        return Scaffold.of(context).showSnackBar(snackBar);
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
              ],
            ),
          )
        )
      )
    );
  }
}
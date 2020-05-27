import 'package:flutter/material.dart';
import 'package:minha_escola/model/user.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  Future<UserApi> fetchUser;

  @override
  void initState() {
    super.initState();
    fetchUser = loadUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff345D7E),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color(0xffF8B195),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              size: 35,
            ), 
            onPressed: () {
              Navigator.of(context).pop();
            }
          ),
          SizedBox(width: 10)
        ]
      ),
      body: FutureBuilder<UserApi>(
        future: fetchUser,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print(snapshot.data);
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    color: Color(0xffF8B195),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.network('https://pt.gravatar.com/userimage/182350569/a4daaa81158c26662091765680f3c96b.png'),
                      ),
                      SizedBox(height: 30),
                      Text(
                        snapshot.data.nome.toString(),
                        style: TextStyle(
                          fontSize: 24
                        )  
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Escola Joas de Almeida',
                        style: TextStyle(
                          fontSize: 24
                        )  
                      ),
                      SizedBox(height: 10),
                      Text(
                        snapshot.data.cdTurma.toString(),
                        style: TextStyle(
                          fontSize: 24
                        )  
                      )
                    ]
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: 123,
                          height: 84,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffF8B195)
                          ),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/notificacoes');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Icon(
                                  Icons.notifications,
                                  size: 50
                                ),
                                Text(
                                  'notif',
                                  style: TextStyle(fontSize: 20),
                                )
                              ]
                            ),
                          ),
                        ),
                        Container(
                          width: 123,
                          height: 84,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffF8B195)
                          ),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/boletim');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget> [
                                Icon(
                                  Icons.featured_play_list,
                                  size: 50
                                ),
                                Text(
                                  'boletim',
                                  style: TextStyle(fontSize: 20),
                                )
                              ]
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color(0xffF8B195),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/alter_senha');
                        },
                        child: Text(
                          'Alterar senha',
                          style: TextStyle(fontSize: 20),
                        )
                      ),
                    )
                  ],
                )
              ],
            );
          } 
          else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      )
    );
  }
}
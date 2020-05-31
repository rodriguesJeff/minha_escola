import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:minha_escola/controller/notifications_controller.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Notificacoes extends StatefulWidget {
  @override
  _NotificacoesState createState() => _NotificacoesState();
}

class _NotificacoesState extends State<Notificacoes> {
  NotificationsController notificationsController; //setando a variavel
  @override 
  void initState() {
    super.initState();
    notificationsController = NotificationsController(); //iniciando a variavel
    notificationsController.fetchNotificationsList();//chamando o metodo para fazer a request dos dados
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff345D7E),
      appBar: AppBar(
        backgroundColor: Color(0xff345D7E),
        elevation: 0,
        title: Text(
          'Notificações',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Observer(
        name: 'ListaNotificacoes',
        builder: (_) {//criando o observavel        
        return (notificationsController.notificationsApi != null) ?//verificando se nao foi-me dado uma string vazia
          AnimationLimiter(
            child: ListView.builder(
              itemCount: notificationsController.notificationsApi.data.length,//pegando tamanho da lista            
              /*
                notificationsController = a variavel que chama a store do mobx
                notificationsApi = variavel da store que pega o modelo da NotificationsApi
                data = variavel que adiciona tudo que foi pego na request em uma lista              
              */ 
              
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredList(
                  position: index, 
                  duration: Duration(milliseconds: 375),
                  child: SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: Padding(
                        padding: EdgeInsets.only(top: 7.5, left: 15, right: 15),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffF8B195)
                          ),
                          child: ListTile(
                            title: Text(
                              'Notificação:',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w100
                              )
                            ),
                            subtitle: Text(
                              notificationsController.notificationsApi.data[index].conteudo,
                              style: TextStyle(
                                fontSize: 15
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  )
                );
              },
            ),
          ) : 
          Center( 
            child: CircularProgressIndicator()
          );
      }),
    );
  }
}

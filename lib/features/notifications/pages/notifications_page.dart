import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:minha_escola/features/notifications/pages/notifications_controller.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  NotificationsController notificationsController;
  @override
  void initState() {
    super.initState();
    notificationsController = NotificationsController();
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
          builder: (_) {
            return (true)
                ? AnimationLimiter(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return AnimationConfiguration.staggeredList(
                            position: index,
                            duration: Duration(milliseconds: 375),
                            child: SlideAnimation(
                                verticalOffset: 50.0,
                                child: FadeInAnimation(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 7.5, left: 15, right: 15),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Color(0xffF8B195)),
                                      child: ListTile(
                                        title: Text('Notificação:',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w100)),
                                        subtitle: Text(
                                          'teste de notificação',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                )));
                      },
                    ),
                  )
                : Center(child: CircularProgressIndicator());
          }),
    );
  }
}

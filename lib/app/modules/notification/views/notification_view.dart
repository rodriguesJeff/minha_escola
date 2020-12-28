import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:minha_escola/app/modules/notification/controllers/notification_controller.dart';

class Notifications extends GetView {
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
      body: GetBuilder<NotificationController>(
        builder: (_) => AnimationLimiter(
          child: ListView.builder(
            itemCount: _.notification.length,
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
                            'notification',
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
        ),
      )
    );
  }
}
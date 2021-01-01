import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minha_escola/app/modules/profile/controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (_) => Scaffold(
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
              onPressed: (){
                _.exit();
              }
            ),
            SizedBox(width: 10)
          ]
        ),
        body: controller.obx(
          (user) => Column(
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
                      child: Image(
                        image: AssetImage('assets/perfil.png'),
                      )
                    ),
                    SizedBox(height: 30),
                    Text(
                      user.firstname +' '+ user.lastname,
                      style: TextStyle(
                        fontSize: 24
                      )  
                    ),
                    SizedBox(height: 10),
                    Text(
                      user.schoolName,
                      style: TextStyle(
                        fontSize: 24
                      )  
                    ),
                    SizedBox(height: 10),
                    Text(
                      user.className,
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
                            Get.toNamed('/notifications');
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
          ),
        )
      ),
    );
  }
}
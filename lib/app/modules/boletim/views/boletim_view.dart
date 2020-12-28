import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BoletimView extends GetView {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff345D7E),
      appBar: AppBar(
        backgroundColor: Color(0xff345D7E),
        title: Text(
          'Boletim',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30  
          ),  
        ),
        centerTitle: true,
        elevation: 0,
      ), 
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: 10,
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
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffF8B195),
                      ),
                      child: ListTile(
                        title: Text(
                          'Boletim',
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 25
                          )  
                        ),
                        subtitle: Text(
                          'nota 1: ' + '1' + '\n'
                          'nota 2: ' + '2' + '\n'
                          'nota 3: ' + '3' + '\n'
                          'nota 4: ' + '4' + '\n',
                          style: TextStyle(
                            fontSize: 20
                          )
                        ),
                      ),
                    ),
                  )
                )
              )
            );
          },
        )
      )  
    );
  }
}
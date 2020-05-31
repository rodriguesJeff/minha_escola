import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:minha_escola/controller/boletim_controller.dart';

class Boletim extends StatefulWidget {
  @override
  _BoletimState createState() => _BoletimState();
}

class _BoletimState extends State<Boletim> {
  BoletimController boletimController;

  @override 
  void initState() {
    super.initState();
    boletimController = BoletimController();
    boletimController.fetchBoletim();
  }
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
      body: Observer(
        name: 'ListaBoletimApi',
        builder: (_) {
        return (boletimController.boletimApi != null) ?
          AnimationLimiter(
            child: ListView.builder(
              itemCount: boletimController.boletimApi.data.length,
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
                              'nota 1: ' + boletimController.boletimApi.data[index].nota1.toString() + '\n'
                              'nota 2: ' + boletimController.boletimApi.data[index].nota2.toString() + '\n'
                              'nota 3: ' + boletimController.boletimApi.data[index].nota3.toString() + '\n'
                              'nota 4: ' + boletimController.boletimApi.data[index].nota4.toString() + '\n',
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
        : Center(
          child: CircularProgressIndicator(),
        );
      }),   
    );
  }
}
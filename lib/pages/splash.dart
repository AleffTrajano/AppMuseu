import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  @override
  Splashtate createState() => Splashtate();
}

class Splashtate  extends State<SplashPage> {
  //////////////////////////////////
  void navigationToNextPage() {
    Navigator.pushReplacementNamed(context, '/HomePage');
  }
  ///////////////////////////////
  startSplashScreenTimer() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationToNextPage);
  }
  ///////////////////////////////
  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  } 
  //////////////////////////////
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Container(
        decoration: BoxDecoration(
            color: const Color(0xffFFA751),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromRGBO(255, 167, 81, 1), Color.fromRGBO(255, 233, 174, 1)]

            ),
            image: DecorationImage(
                image: AssetImage('assets/img/tela4.png'), 
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.23), BlendMode.dstATop),
                fit: BoxFit.cover)
                
                ),
                  child: Scaffold(
                     backgroundColor: Colors.transparent,
                      body: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              color: Colors.transparent,
                                width: 200,
                                height: 360,
                                padding: const EdgeInsets.all(10.0),
                                alignment:  Alignment.topCenter,
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                        height: 230.0,
                                          alignment:  Alignment.topLeft,
                                          child: Text("Seja bem vindo!",
                                                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, fontFamily: 'constan'),
                                                  ),
                                          padding: const EdgeInsets.all(10.0),
                                   
                                          
                                      ),
                                       Container(
                                        height: 240.0,
                                          alignment:  Alignment.bottomLeft,
                                          child: Text("__",
                                                  style: TextStyle(fontSize: 30),
                                                  ),
                                          padding: const EdgeInsets.all(10.0)
                                      ),
                                      Container(
                                        height: 260.0,
                                          alignment:  Alignment.bottomLeft,
                                          child: Text("MUSEU DE ARTE",
                                                  style: TextStyle(fontSize: 13, fontFamily: 'constan'),
                                                  ),
                                          padding: const EdgeInsets.all(10.0)
                                      ),
                                      Container(
                                        height: 280.0,
                                          alignment:  Alignment.bottomLeft,
                                          child: Text("ASSIS CHATEAUBRIAND",
                                                  style: TextStyle(fontSize: 13, fontFamily: 'constan'),
                                                  ),
                                          padding: const EdgeInsets.all(10.0)
                                      )
                    
                                  
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    ),
        );
  }
}
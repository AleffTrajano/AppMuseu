import 'package:app_museu/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'create_account.dart';


class HomePage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<HomePage> {
  static String tag = 'create-account-page';
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
            decoration: BoxDecoration(
                color: const Color(0xffFFA751),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(255, 167, 81, 1),
                      Color.fromRGBO(255, 233, 174, 1)
                    ]),
                image: DecorationImage(
                    image: AssetImage('assets/img/tela3.png'),
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.23), BlendMode.dstATop),
                    fit: BoxFit.cover)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Container(
                padding: EdgeInsets.only(top: 60, left: 40, right: 40),
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      width: 128,
                      height: 128,
                      child: Image.asset("assets/img/museu.png"),
                    ),
                    SizedBox(
                      height:90,
                    ),

                    Container(
                      height: 60,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                         
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0),
                            Color.fromRGBO(255, 255, 255, 0),
                          ],
                        ),
                       
                      ),
                      child: SizedBox.expand(
                        child: FlatButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "VISITAR",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SplashScreenPage()),
                            );
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              ),
                              color:Color.fromRGBO(255, 255, 255, 1),
                          
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.3, 1],
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0),
                            Color.fromRGBO(255, 255, 255, 0),
                          ],
                        ),
                      ),

                      child: SizedBox.expand(
                        child: FlatButton(
                        
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "CADASTRO",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CreeatAccount()),
                            );
                          },
                      
                          shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: Colors.black87)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //Feito por: Emerson, se for remover, remova APENAS essa parte
                    Stack(
                      children: <Widget>[
                          Align(
                          alignment: FractionalOffset(0.20, 0.99),
                          child:  new FloatingActionButton(
                              heroTag: "btn6",
                              elevation: 20,
                              onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),
                                );
                              },
                              backgroundColor: Color.fromRGBO(255,255,255 , 1),
                              
                              child: Container(
                                alignment:  Alignment.bottomCenter,
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                    image: AssetImage('assets/img/f_logo.png'), 
                                    alignment: Alignment.topCenter, 
                                    fit: BoxFit.fitHeight   
                                    )
                                ),  
                              ),
                        
                        ),
                        ),

                       Align(
                          alignment: FractionalOffset(0.80, 0.99),
                          child:
                            Container(
                             child: new FloatingActionButton(
                              heroTag: "btn5",
                              elevation: 20,
                              onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),
                                );
                              },
                              backgroundColor: Color.fromRGBO(255,255,255 , 1),
                              child: Container(
                                height:40,
                                alignment:  Alignment.bottomCenter,
                                
                                decoration: BoxDecoration(
                                    
                                    image: DecorationImage(
                                    image: AssetImage('assets/img/g_logo.png'), 
                                    alignment: Alignment.topCenter, 
                                    fit: BoxFit.fitHeight   
                                    )
                                ),  
                              ),
                        ),
                            
                            ),
                           
                        ),

                      ],

                    ),
                  ],
                ),
              ),
            )));
  }
}

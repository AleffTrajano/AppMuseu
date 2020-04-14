import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(Splash_end());

class Splash_end extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container(
        decoration: BoxDecoration(
            color: const Color(0xffFFA751),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromRGBO(255, 167, 81, 1), Color.fromRGBO(255, 233, 174, 1)]

            ),
            image: DecorationImage(
                image: AssetImage('assets/img/tela1.png'), 
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
                                width: 250,
                                height: 300,
                                padding: const EdgeInsets.all(10.0),
                                alignment:  Alignment.topCenter,
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                        height: 350.0,
                                          alignment:  Alignment.topLeft,
                                          child: Text("Obrigado",
                                                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, fontFamily: 'constan'),
                                                  ),
                                          padding: const EdgeInsets.all(10.0),
                                   
                                          
                                      ),
                                      Container(
                                        height: 140.0,
                                          alignment:  Alignment.bottomLeft,
                                          child: Text("Pela",
                                                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, fontFamily: 'constan'),
                                                  ),
                                          padding: const EdgeInsets.all(10.0),
                                   
                                          
                                      ),
                                      Container(
                                        height: 200.0,
                                          alignment:  Alignment.bottomLeft,
                                          child: Text("Sua",
                                                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, fontFamily: 'constan'),
                                                  ),
                                          padding: const EdgeInsets.all(10.0),
                                   
                                          
                                      ),
                                      Container(
                                        height: 260.0,
                                          alignment:  Alignment.bottomLeft,
                                          child: Text("Visita!",
                                                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, fontFamily: 'constan'),
                                                  ),
                                          padding: const EdgeInsets.all(10.0),
                    
                                      )   
                                  ],
                                ),
                              )
                            ],
                            
                          ),
                        ),
                          floatingActionButtonLocation: 
                  FloatingActionButtonLocation.centerFloat,
                  floatingActionButton: Stack(
                    children: <Widget>[
                         Align(
                          alignment: Alignment.bottomCenter,
                          child:
                            Container(
                              height: 80.0,
                              width: 80.0,
                              
                              child: FloatingActionButton(
                                elevation: 20,
                                onPressed: (){                           
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return HomePage();
                                  }));
                                },
                                backgroundColor: Color.fromRGBO(54, 54, 54, 50),
                                child: Icon(
                                  Icons.home,
                                  size: 70,
                                  
                                  )
                                ),
                            
                            ),
                           
                        ),
                                       
                      ],
                  )
                        
                    ),
        ),
      );
  }
}


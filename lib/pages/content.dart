import 'package:flutter/material.dart';
import 'home.dart';
import 'home.dart';
import 'home.dart';
import 'search.dart';
import 'search.dart';
import 'search.dart';
import 'splash_end.dart';
import 'splash_end.dart';

void main() => runApp(Content());


class Content extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
             body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
            child: Column(
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug painting" (press "p" in the console, choose the
              // "Toggle Debug Paint" action from the Flutter Inspector in Android
              // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
              // to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 40, right: 40, bottom: 50),

                  child: Container(
                     
                     width: 370,
                     height: 560,
                     padding: const EdgeInsets.all(10.0),
                     alignment:  Alignment.topCenter,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.0),
                      color: Colors.red[50],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0.3, 7.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),

                    
                     child: Stack(
                       children: <Widget>[
                          Container(
                              height: 380.0,
                              alignment:  Alignment.bottomCenter,
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                  image: AssetImage('assets/img/quadro.jpg'), 
                                  alignment: Alignment.topCenter, 
                                  fit: BoxFit.fitHeight   
                                  )
                              ),  
                            ),
                        
                         Container(
                         alignment:  Alignment.bottomCenter,
                         child: Text("O Grito é a obra-prima do pintor norueguês Edvard Munch. Pintada pela primeira vez em 1893, a tela foi ganhando três novas versões com o passar do tempo. Historicamente a obra de Munch é classificada como iniciadora do expressionismo (um importante movimento modernista da primeira parte do século XX). As suas telas são densas e abordam temas difíceis como a solidão, a melancolia, a ansiedade e o medo.",
                         textAlign: TextAlign.center,
                        ), 
                       ),

                       ],
                     )
                    ),
                      )
                    ],
                  ),
                ),
                backgroundColor: Colors.transparent,
/*
                bottomNavigationBar: BottomAppBar(
                  color: Colors.yellow,
                  child: 
                      Container(height: 50.0,)
                ),
*/                
                floatingActionButtonLocation: 
                  FloatingActionButtonLocation.centerFloat,
                  floatingActionButton: Stack(
                    children: <Widget>[
                       Align(
                          alignment: FractionalOffset(0.02, 0.99),
                          child: new FloatingActionButton(
                            heroTag: "btn1",
                            
                            elevation: 20,
                            onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),
                              );
                            },
                            backgroundColor: Color.fromRGBO(54,54,54, 1),
                            
                            child: Icon(
                              Icons.home,
                              size: 45,
                              )
                            ),
                        ),

                       Align(
                          alignment: Alignment.bottomCenter,
                          child:
                            Container(
                              height: 80.0,
                              width: 80.0,
                              
                              child: new FloatingActionButton(
                                heroTag: "btn2",
                                 onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Search()),
                                  );
                                },
                                elevation: 20,
                                backgroundColor: Color.fromRGBO(54, 54, 54,1),
                                child: Icon(
                                  Icons.search,
                                  size: 70,
                                  
                                  )
                                ),
                            
                            ),
                           
                        ),
                       
                        Align(
                          alignment: FractionalOffset(0.98, 0.99),
                          child: new FloatingActionButton(
                            heroTag: "btn3",
                             onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Splash_end()),
                                );
                              },
                            elevation: 90,
                            backgroundColor: Color.fromRGBO(54,54,54, 1),
                            child: Icon(Icons.close,
                                        size: 50,
                                        )
                            ),
                        ),
                      ],
                  )
                  ),
                  ),

    );
  }
}


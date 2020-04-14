import 'package:flutter/material.dart';
import '../splashscreen.dart';
import 'content.dart';

void main() => runApp(Search());

class Search extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
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
                                width: 250,
                                height: 150,
                                padding: const EdgeInsets.all(10.0),
                                alignment:  Alignment.topCenter,
                                child:

                                    FloatingActionButton(
                                  elevation: 20,
                                  backgroundColor: Color.fromRGBO(54,54,54, 1),
                                    onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreenPage()),
                                );
                              },
                                  child: Icon(
                                    Icons.search,
                                    size: 100,
                                    )
                                  ),


/*
                                  IconButton(
                                    icon: const Icon(Icons.search),
                                    onPressed:() {
                                      Navigator.push(context, MaterialPageRoute(builder: (context){
                                        return Content();
                                      }));
                                    },
                                    iconSize: 100.0,
                                    color: const Color(0xFF000000),
                                  ),   */                    
                              ),
                            ],
                          ),
                        ),
         
                    ),
                    
        ),
      );
  }
  
}

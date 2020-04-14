import 'package:flutter/material.dart';

import 'home.dart';


class CreeatAccount extends StatelessWidget {



  
  static String tag = 'create-account-page';

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
                image: AssetImage('assets/img/tela3.png'), 
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.23), BlendMode.dstATop),
                fit: BoxFit.cover)
                
                ),
        child: Scaffold( 
          backgroundColor: Colors.transparent,
          
          
          body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                         TextField(
                              decoration: InputDecoration(                              
                              //prefixIcon: Icon(Icons.person),
                              labelText: "Nome",                   
                              
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              //prefixIcon: Icon(Icons.phone),
                              labelText: "Telefone",
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              // prefixIcon: Icon(Icons.person),
                              labelText: "CEP",
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              //prefixIcon: Icon(Icons.streetview),
                              labelText: "Endereço (Rua e numero)",
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              //prefixIcon: Icon(Icons.person),
                              labelText: "Usuário",
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              // prefixIcon: Icon(Icons.person),
                              labelText: "Bairro",
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              // prefixIcon: Icon(Icons.person),
                              labelText: "Complemento",
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              //prefixIcon: Icon(Icons.person_add),
                              labelText: "Usuário",
                            ),
                          ),
                            TextField(
                            decoration: InputDecoration(
                              //prefixIcon: Icon(Icons.lock),
                              labelText: "Senha",
                            ),
                          ),
                            TextField(
                            decoration: InputDecoration(
                              //prefixIcon: Icon(Icons.lock),
                              labelText: "Confirma Senha",
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(50.0),
                            elevation: 5.0,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),
                                );
                              },
                              minWidth: 150.0,
                              height: 50.0,

                              child: Text(
                                "Cadastrar",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                  ]
                ),
              ),
            )
          ],
        ),
      ), 
                           
                  ),     
                ),
                
               
                    
              );
            }
          
            
          
           
          }
          




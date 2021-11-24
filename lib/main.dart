import 'package:flutter/material.dart';
import 'dart:math';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Home(),
  ));
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Frase 1",
    "Frase 2",
    "Frase 3",
    "Frase 4",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
            backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
         /* decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.deepPurpleAccent),
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text(
                "$_fraseGerada",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.deepPurpleAccent,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),

      ),
    );
  }
}

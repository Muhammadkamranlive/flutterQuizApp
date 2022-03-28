import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         home:Scaffold(
             appBar: AppBar(
               title: Text('Ask Me Anything'),
               backgroundColor: Colors.blue.shade900,
             ),
             backgroundColor: Colors.blue,
             body: Askme(),
         )
    );
  }
}

class Askme extends StatefulWidget {

  @override
  _AskmeState createState() => _AskmeState();
}

class _AskmeState extends State<Askme> {
  int idnumber=1;
  void changeme(){
    setState(() {
      idnumber=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child:FlatButton(
                child:Image(
                  image: AssetImage('images/ball$idnumber.png'),
                ),
                onPressed:(){
                  print('I got Clicked $idnumber');
                  changeme();
                },
              ),

            )
          ],
        ),
      ),
    );
  }
}




















































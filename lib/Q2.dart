import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {


  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<MyApp> {
  final dplay = AudioCache();
  void soundfuntion(int rate){
    dplay.play("note$rate.wav");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(

        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: (){
                    soundfuntion(1);
                  },
                  child: Text(""),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.black,
                  onPressed: (){
                    soundfuntion(2);
                  },
                  child: Text(""),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.purple,
                  onPressed: (){
                    soundfuntion(3);
                  },
                  child: Text(""),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.cyan,
                  onPressed: (){
                    soundfuntion(4);
                  },
                  child: Text(""),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.deepOrange,
                  onPressed: (){
                    soundfuntion(5);
                  },
                  child: Text(""),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: (){
                    soundfuntion(6);
                  },
                  child: Text(""),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.lightGreenAccent,
                  onPressed: (){
                    soundfuntion(7);
                  },
                  child: Text(""),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
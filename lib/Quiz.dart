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
  List <Color> mylist=[Colors.red,Colors.black,Colors.green,Colors.purple,Colors.pink,Colors.black54];
  List <int> index=[1,2,4,5,6,7];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              for(int i=0; i<6;i++)
                ExpandedCustom(colour: mylist[i],num:index[i],)
            ],
          ),
        ),
      ),
    );
  }
}


class ExpandedCustom extends StatelessWidget {
  final dplay = AudioCache();
  void soundfuntion(int rate){
    dplay.play("note$rate.wav");
  }

  ExpandedCustom({required this.colour,required this.num});
  Color? colour;
  int num;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed:(){
          soundfuntion(num);
        },
        color: colour,
        child: Text(''),
      ),
    );
  }
}

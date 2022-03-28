
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

           home: Scaffold(
                backgroundColor: Colors.teal,
              body:Container(
                 child: Row(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(

                        flex: 2,
                          child:Container(
                            margin:EdgeInsets.fromLTRB(0, 30, 0, 30),
                            color: Colors.red,
                          ),
                      ),
                      Expanded(
                        flex: 4,
                        child:Container(
                          margin:EdgeInsets.fromLTRB(0, 90, 0, 0),
                          child: Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  color: Colors.yellow,
                                  margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
                                ),
                              ],
                          ),
                          color: Colors.teal,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child:Container(
                          margin:EdgeInsets.fromLTRB(0, 30, 0, 30),
                          color: Colors.red,
                        ),
                      )
                    ],
                 ),
              ),
           ),
    );
  }
}

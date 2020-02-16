import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  theme:
    ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meher",
      home: new Scaffold(
        appBar: new AppBar(),
      ),

      
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  @override
  void initState() { 
    super.initState();
    Timer(Duration(seconds: 5),()=> print("Welcome"));
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blueAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.greenAccent,
                        size: 50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      ),
                    Text(
                      "Agora Video Call", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                  ],)
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(padding: EdgeInsets.only(top:20),
                    ),
                    Text("agora.io", style: TextStyle(color: Colors.white, fontSize: 24),),
                  ],),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
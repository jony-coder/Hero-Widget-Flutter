import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:herowidget/SecondPage.dart';

void main(){
  
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Hero Widget"),),
        body: Center(
          child: CircleAvatar(
            radius: 50,
            child: GestureDetector(
              child: Hero(
                tag: "show",
                child: Icon(Icons.add, size: 50,),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => second()));
              },
            ),
          ),
        ),
      ),
    );
  }
}
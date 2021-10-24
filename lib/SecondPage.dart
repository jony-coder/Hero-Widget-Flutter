import 'package:flutter/material.dart';

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Scaffold(
          appBar: AppBar(title: Text("Second Page"),),
          body: Center(
            child: Container(
              child: Hero(
                tag: "show",
                child: Icon(Icons.camera, size: 250,),
              ),

            ),
          ),
        ),
      )
    );
  }
}

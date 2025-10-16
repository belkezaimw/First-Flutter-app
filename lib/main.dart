import 'package:dash_cam/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),


  ));
  }

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("teest"),
      backgroundColor: Colors.amber,),
      body: Column(children: [
                          Text("text1")
                        ,Text("text2")
                        ,Text("text3")
      ],),
    );
  }
}

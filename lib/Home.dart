import 'package:flutter/material.dart';
import 'package:dash_cam/Coffee_prefs.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("My Coffe id",style: TextStyle(fontStyle: FontStyle.italic),),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [

          Container(
            
            color:Colors.brown[300],            
            padding:EdgeInsets.all(20),
            child: Text("How I Like My Coffee ...",style: TextStyle(fontSize: 17)),
          ),
          Container(
            
            color: Colors.brown[100],
            padding:EdgeInsets.all(20),
            child: CoffeePrefs(),
            
          ),
          Expanded(child: Image.asset('assets/img/coffee_bg.jpg',fit: BoxFit.fitWidth ,alignment: Alignment.bottomCenter,)),
        ],
      ),
    );
  }
}
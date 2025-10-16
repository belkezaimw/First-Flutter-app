import 'package:flutter/material.dart';




class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int Strenght  = 0;
  int sugar = 0 ;


void increasestrenght(){
  setState(() {
     Strenght = Strenght < 5 ? Strenght + 1 : 1;

  });
 


}
void increasesugar(){
  setState(() {
     sugar = sugar < 5 ? sugar + 1 : 0;
  });
 

print("inc sokor by wa7ed");
}
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(children: [
          
          Text("Strenght : ",style: TextStyle(fontSize: 17),),
          //SizedBox(width: 10,),
          Text("",style: TextStyle(fontSize: 17),),
          for (int i = 0 ;i < Strenght;i++)
              Image.asset('assets/img/coffee_bean.png',width: 25,color: Colors.brown[100],colorBlendMode: BlendMode.multiply,),
          
          Expanded(child: SizedBox()),
          ElevatedButton(onPressed: increasestrenght, style: ElevatedButton.styleFrom(),child:Text("+") ,),
        ],),
        Row(    children: [

          Text("Sugars : ",style: TextStyle(fontSize: 17),),
          //SizedBox(width: 10,),
                    if(sugar==0)
              const Text("no sugar......",style: TextStyle(fontSize: 17),),
          Text('',style: TextStyle(fontSize: 17),),
          for (int i = 0 ;i < sugar;i++)
          Image.asset('assets/img/sugar_cube.png',width: 25,color: Colors.brown[100],colorBlendMode: BlendMode.multiply,),
          Expanded(child: SizedBox()),
          ElevatedButton(onPressed: increasesugar, child:Text("+") ,),

          ]     
           ),
      ],
    );
  }
}
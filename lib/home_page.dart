import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{

  const Homepage({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:Container(
       decoration: BoxDecoration(
         color: Colors.red,
         image:DecorationImage(
           fit: BoxFit.fitHeight,
           image: AssetImage("assets/images/go_moon.jpg"),
         )
       ),
     ),
   );
  }
}


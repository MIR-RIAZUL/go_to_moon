import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_to_moon/home_page.dart';

void main()
{
  runApp(const App());
}
class App extends StatelessWidget{
const App({Key?key}):super (key:key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'GoMoon',
     theme: ThemeData(scaffoldBackgroundColor:Color.fromRGBO(31, 31, 31, 1.0),),
     home:Homepage(),
   );
  }

}
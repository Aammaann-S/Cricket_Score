import 'package:cricket_score/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:cricket_score/cricket_screen.dart';


void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      routes: {
        '/':(context) => HomeScreen(),
        '/Cricket':(context) => CricketScreen(),
      },
      initialRoute: '/',

  );


  }
}
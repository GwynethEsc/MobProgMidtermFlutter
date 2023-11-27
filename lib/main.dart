import 'package:flutter/material.dart';
import 'homescreen.dart';


void main() {
  runApp(const MainClass());
}

class MainClass extends StatelessWidget{
  const MainClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
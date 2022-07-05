import 'package:flutter/material.dart';
import 'package:food_delivery_ui/Screens/Home_Screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),debugShowCheckedModeBanner: false,
    );
  }
}

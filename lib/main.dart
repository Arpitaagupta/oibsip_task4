//import the material package
import 'package:flutter/material.dart';
import 'screens/home_screens.dart';

//run the main method
void main() {
  //runApp method
  runApp(
    const MyApp(),
  );
}

//creating MyApp widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //removing debug banner
      //set homepage
      home: HomeScreen(), //this method is created in separate file
    );
  }
}

import 'package:flutter/material.dart';
import 'package:neo/screens/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matrix Home',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          backgroundColor: Color.fromARGB(216, 227, 209, 209)),
      home: HomePage(title: 'Matrix Home'),
    );
  }
}

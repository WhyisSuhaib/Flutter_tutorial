import 'package:flutter/material.dart';
import 'package:flutter_tutorial/page1.dart';
import 'package:flutter_tutorial/page2.dart';
import 'package:flutter_tutorial/page3.dart';
import 'package:flutter_tutorial/page4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "Page1":(context)=>Page1(),
        "Page2":(context)=>Page2(),
        "Page3":(context)=>Page3(),
        "Page4":(context)=>Page4(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Page1(),
    );
  }
}
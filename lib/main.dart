import 'package:flutter/material.dart';
import 'package:untitled5/fourth.dart';
import 'package:untitled5/result.dart';
import 'package:untitled5/se.dart';
import 'package:untitled5/thirdPage.dart';

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
      "name1":(context)=>third()
    },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: company(),
      debugShowCheckedModeBanner: false,
    );
  }
}



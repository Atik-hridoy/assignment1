import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/post_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'REST API App',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: PostScreen(),
    );
  }
}
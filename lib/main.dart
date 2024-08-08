import 'package:flutter/material.dart';
import 'package:haven/home.dart';
import 'package:haven/logcat.dart';
import 'package:haven/mypage.dart';
import 'package:haven/edit_profile.dart';
import 'package:haven/camera.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

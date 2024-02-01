// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:netninja_tutorial/pages/choose_location.dart';
import 'package:netninja_tutorial/pages/home.dart';
import 'package:netninja_tutorial/pages/loading.dart';
import 'package:netninja_tutorial/prac.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/choose_location': (context) => ChooseLocation()
      },

      // MyWidget()
    );
  }
}

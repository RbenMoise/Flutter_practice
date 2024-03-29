// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netninja_tutorial/pages/choose_location.dart';
import 'package:netninja_tutorial/pages/home.dart';
import 'package:netninja_tutorial/pages/loading.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }));

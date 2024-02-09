// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData(BuildContext context) async {
    String name = await Future.delayed(Duration(seconds: 2), () {
      return 'name';
    });

    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'student in the hostel';
    });
    print('$name' '$bio');
  }

  @override
  void initState() {
    //
    super.initState();
    print('init');
    getData(context);
    print('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/choose_location');
            },
            child: Row(
              children: [
                Icon(
                  Icons.edit_location,
                ),
                Text('change location')
              ],
            ),
          )
        ],
      ),
    );
  }
}

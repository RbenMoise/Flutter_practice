// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class avator extends StatelessWidget {
  const avator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.all(10),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(color: Colors.green)),
          child: Image.asset('assets/Work Images/luca.jpg')),
    );
  }
}

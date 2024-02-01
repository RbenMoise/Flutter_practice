// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'quote.dart';

class quotecard extends StatelessWidget {
  final Quote quote;
  final void Function()? delete;
  quotecard({
    required this.quote,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(quote.text),
          Text(quote.author),
          IconButton(onPressed: delete, icon: Icon(Icons.delete))
        ]),
      ),
    );
  }
}

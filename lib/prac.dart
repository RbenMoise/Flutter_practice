// ignore_for_file: prefer_const_constructors, use_function_type_syntax_for_parameters, avoid_types_as_parameter_names, non_constant_identifier_names

import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:netninja_tutorial/avator.dart';
import 'package:netninja_tutorial/quote_card.dart';
import 'quote.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int count = 1;

  void reduce() => {setState(() => count -= 1)};

  void add() => {setState(() => count += 1)};

  List<Quote> quotes = [
    Quote(text: 'the text', author: 'name'),
    Quote(text: 'thwe schre', author: 'authoer')
  ];

  // Widget QuoteTemplate(quote) {
  //   return quotecard(
  //     quote: quote,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: BackButton(
          color: Colors.black26,
        ),
        title: Text('Practice'),
        centerTitle: true,
        backgroundColor: Colors.blue[100],
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: Column(children: [
          Text('$count'),
          avator(),
          Divider(),
          Column(
            children: quotes
                .map((quote) => quotecard(
                    quote: quote,
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    }))
                .toList(),
          )
        ]),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: EdgeInsets.all(20)),
          FloatingActionButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              onPressed: () => {reduce()},
              splashColor: Colors.pink,
              hoverColor: Colors.red,
              focusColor: Colors.yellow,
              backgroundColor: Colors.green[500],
              child: Icon(
                Icons.add,
                color: Colors.white,
              )),
          FloatingActionButton(
            onPressed: () => {add()},
            backgroundColor: Colors.red,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Icon(
              Icons.remove,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

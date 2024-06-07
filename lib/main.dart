import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: Color.fromARGB(255, 0, 0, 0),
            width: 320, height: 200,
            margin: EdgeInsets.only(
              top: 32,
              bottom: 20,
            ),
            child: TextButton(
              onPressed: () {
                //abrir texto sobre a praia
                //
              },
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 8,
                  left: 4,
                ),
                child: Text('Ubatuba'),)
              
            ),
          ),
        ),
      ),
    );
  }
}

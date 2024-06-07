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
            color: const Color.fromARGB(255, 0, 0, 0),
            width: 320, height: 200,
            margin: const EdgeInsets.only(
              top: 32,
              
            ),
            child: TextButton(
              onPressed: () {
                //abrir texto sobre a praia
                // path/to/sdkmanager --install "cmdline-tools;latest"

              },
              child: Container(
                margin: const EdgeInsets.only(
                  bottom: 8,
                  left: 4,
                ),
                child: const Text('Ubatuba'),)
              
            ),
          ),
        ),
      ),
    );
  }
}

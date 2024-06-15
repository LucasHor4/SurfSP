import 'package:flutter/material.dart';

void main() {
  runApp(const Ondas());
}

class Ondas extends StatelessWidget {
  const Ondas({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        body: Center(

          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            }, 
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.cyan)),
            child: const Text
            ('A página ou função ainda não foi implementada! Aperte no texto para voltar.')
            ),

        ),

      ),

    );
  }
  
}
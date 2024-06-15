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
            child: const Text
            ('A pagina ou função ainda não foi implementada! Aprete no texto para voltar.')
            ),

        ),

      ),

    );
  }
  
}
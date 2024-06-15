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
            ('Pagina ainda não implementada! Aprete aqui para voltar.')
            ),

        ),

      ),

    );
  }
  
}
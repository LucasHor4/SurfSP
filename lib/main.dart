import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Praias());
}

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: const Color.fromARGB(255, 255, 55, 55),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Praias(),
                  ),
                );
              },
              child: const Text('Praias'),
            ),
            //fazer nessa pagina: barra de menu, seletor de idioma e botões para navegação de paginas.
          ),
        ),
      ),
    );
  }
}

class Praias extends StatefulWidget {
  @override
  State<Praias> createState() => PraiasState();
}

class PraiasState extends State<Praias> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        }); 
      },// para alternar entre ligado e deligado.

      child: Center(
        child: AnimatedContainer(
          margin: const EdgeInsets.only(
            bottom: 20,
          ),
          width: selected ? 200 : 200,
          height: selected ? 350 : 320,
          color: selected
              ? const Color.fromARGB(255, 28, 255, 8)
              : const Color.fromARGB(255, 255, 0, 0),
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          //Container e configurações dele.

          child: Container(
            width: 40, height: 25,
            margin:const EdgeInsets.only(
              top: 30,
              bottom: 25,
            ),
            child: Text(selected ? 'Foi' : '', textDirection: TextDirection.ltr,),
          ), //Texto sobre as praias.

        ),
      ),
    );
  }
}

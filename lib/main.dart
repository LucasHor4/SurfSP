import 'package:flutter/material.dart';

void main() {
  runApp(const Praias());
}

class App extends StatelessWidget {
  const App({super.key});

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
                    builder: (context) => const Praias(),
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
  const Praias({super.key});

  @override
  State<Praias> createState() => PraiasState();
}

class PraiasState extends State<Praias> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      }, // para alternar entre ligado e deligado.

      child: Center(
          child: ListView(
        children: [
          //Praia de Ubatuba:

          AnimatedContainer(
            //Container e configurações dele.
            margin: const EdgeInsets.only(
              bottom: 20,
              top: 20,
              left: 40,
              right: 40,
            ),
            width: 50,
            height: selected ? 350 : 316,
            color: selected
                ? const Color.fromARGB(255, 28, 255, 8)
                : const Color.fromARGB(255, 255, 0, 0),
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            //Texto sobre as praias.
            child: Container(
              width: 40,
              height: 25,
              margin: const EdgeInsets.only(
                top: 30,
              ),
              child: Image.asset(
                'img/Ubatuba-Melhores-Praias-Capa.jpg',
                width: 50, height: 316,alignment: Alignment.topCenter,
              ),
            ),
          ),
          //Praia de  :
        ],
      )),
    ));
  }
}

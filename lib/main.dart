import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
                bottom: 10,
                top: 10,
                left: 50,
                right: 50,
              )
              ,padding: const EdgeInsets.only(
                bottom: 1,
                top: 1,
                left: 1,
                right: 1,
              ),
              width: 316,
              height: selected ? 350 : 200,
              color: const Color.fromARGB(255, 217, 217, 217),
              duration: const Duration(seconds: 1),
              curve: Curves.ease,
              //Texto sobre as praias.
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                      'img/Ubatuba-Melhores-Praias-Capa.jpg',
                      width: 500,
                      height: 200,
                      fit: selected ? BoxFit.cover : BoxFit.cover,
                    ),
                  ),
                  const Positioned(
                    top: 160,
                    left: 10,
                    child: Text('Ubatuba', 
                    style: TextStyle(fontSize: 40, color: Colors.white, decoration: TextDecoration.none),
                    ),
                  ),
                  Positioned(
                      bottom: 20,
                      left: 2,
                      child: selected
                          ? const Text(
                              'ssssssssssssssssssssssssssssssss',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                  color: Color.fromARGB(255, 41, 41, 41)),
                                  
                            )
                          : const Text(''))
                ],
              )),
          //Praia de  :
        ],
      )),
    ));
  }
}

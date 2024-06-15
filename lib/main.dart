import 'package:flutter/material.dart';
import 'package:surfsp/praias.dart';
import 'package:surfsp/ondas.dart';

void main() {
  runApp(const Inicio());
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => InicioState();
}

// class InicioState extends State<Inicio> {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Container(),;
// }

class InicioState extends State<Inicio> {
  bool aberto = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/fundo.png'), fit: BoxFit.cover)),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: Image.asset(
                      'img/logo-surfsp.png',
                      width: 300,
                      height: 300,
                    ),
                  ),

                  //Botão de navegação.
                  Container(
                      margin: const EdgeInsets.only(
                        top: 55,
                      ),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF91F2F5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      width: 300,
                      child: Builder(
                          builder: (context) => TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/ondaspage');
                                },
                                style: const ButtonStyle(
                                    backgroundColor:
                                        WidgetStatePropertyAll(Colors.cyan)),
                                child: const Text(
                                  'Tipos de Ondas',
                                  style: TextStyle(fontSize: 25),
                                ),
                              )
                          )
                      ),
                      
                  //Botão de navegação.
                  Container(
                      margin: const EdgeInsets.only(
                        top: 55,
                      ),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF91F2F5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      width: 300,
                      child: Builder(
                          builder: (context) => TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/praiaspage');
                                },
                                style: const ButtonStyle(
                                    backgroundColor:
                                        WidgetStatePropertyAll(Colors.cyan)),
                                child: const Text(
                                  'Praias em SP',
                                  style: TextStyle(fontSize: 25),
                                ),
                              )
                          )
                      ),
                ],
              )
            ),
        ),
      ),
      routes: {
        '/homepage': (context) => const Inicio(),
        '/praiaspage': (context) => const Praias(),
        '/ondaspage': (context) => const Ondas(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:surfsp/praias.dart';

void main() {
  runApp(const Inicio());
}

// class Inicio extends StatefulWidget {
//   const Inicio({super.key});

//   @override
//   State<Inicio> createState() => InicioState();
// }

// class InicioState extends State<Inicio> {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Container(),;
// }

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/fundo.png'), fit: BoxFit.cover)),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: Image.asset(
                      'img/logosf.png',
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
                            borderRadius: BorderRadius.circular(8)),
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
                            borderRadius: BorderRadius.circular(8)),
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
                                  'Tipos de Ondas',
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
      },
    );
  }
}

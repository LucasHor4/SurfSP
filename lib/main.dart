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
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: [
                  Center(
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

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            aberto = !aberto;
                          });
                        },
                        child: AnimatedContainer(
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9))),
                          duration: Durations.short1,
                          width: MediaQuery.of(context).size.width - 60,
                          height: 100,
                          child: aberto
                              ? Column(
                                  children: [
                                    Container(
                                      color: Colors.blueAccent,
                                      child: Column(
                                        children: [
                                          //selecionar idioma(ainda não implementado)
                                          Builder(
                                            builder: (context) => TextButton(
                                              onPressed: () {
                                                Navigator.pushNamed(context, '/ondaspage');
                                                },
                                              child: const Text(
                                                'Portugues BR',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                                )
                                              ),
                                            ),
                                          
                                          //selecionar idioma(ainda não implementado)
                                          Builder(
                                            builder: (context) => TextButton(
                                              onPressed: () {
                                                Navigator.pushNamed(context, '/ondaspage');
                                                },
                                              child: const Text(
                                                'English',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                                )
                                              ),
                                            ),
                                          
                                          //selecionar idioma(ainda não implementado)
                                          Builder(
                                            builder: (context) => TextButton(
                                              onPressed: () {
                                                Navigator.pushNamed(context, '/ondaspage');
                                                },
                                              child: const Text(
                                                'Español',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                                )
                                              ),
                                            ),
                                          
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              : Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                  color: Colors.blueAccent,
                                  child: const Center(
                                      child: Text(
                                    'Selecione o idioma',
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ))),
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
                                      Navigator.pushNamed(
                                          context, '/ondaspage');
                                    },
                                    style: const ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            Colors.cyan)),
                                    child: const Text(
                                      'Tipos de Ondas',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ))),

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
                                      Navigator.pushNamed(
                                          context, '/praiaspage');
                                    },
                                    style: const ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            Colors.cyan)),
                                    child: const Text(
                                      'Praias em SP',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ))),
                    ],
                  ))
                ], //
              )),
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

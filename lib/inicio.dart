import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:surfsp/main.dart';

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
      appBar: AppBar(title:const Text('S U R F  S P', style: TextStyle(fontSize: 40), textAlign:TextAlign.center,), leading: Container(/* terminar  */),
      ),
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
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/homepage');
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
                ],
              )),
        ),
      ),
      routes: {
      '/homepage' : (context) => const Praias(),
      '/inicio' : (context) => const Praias(),
    },
    );
  }
}

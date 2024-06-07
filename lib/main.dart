import 'package:flutter/material.dart';
import 'package:surfsp/praias.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: Color.fromARGB(255, 255, 55, 55),
            child: TextButton(
              onPressed: () {
                //Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MainApp(),
                  ),
                );
              },
              child: Text('Praias'),
            ),
            //fazer nessa pagina: barra de menu, seletor de idioma e botões para navegação de paginas.
          ),
        ),
      ),
    );
  }
}

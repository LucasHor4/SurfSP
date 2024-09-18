import 'package:flutter/material.dart';
import 'package:surfsp/classes/cl_Onda.dart';

void main() {
  runApp(const Ondas());
}

class Ondas extends StatefulWidget {
  const Ondas({super.key});

  @override
  State<Ondas> createState() => OndasState();
}

class OndasState extends State<Ondas> {
  List<clOnda> lOnda = [
    clOnda(
      1, 
      'tipoOnda', 
      'descOnda',
      'imgOnda'
      ),
  ];

  @override
  Widget build(BuildContext context) {
    double tamanho = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.home,
              size: 35,
            ),
          )
        ],
        title: Container(
            padding: const EdgeInsets.only(
              top: 5,
              right: 10,
            ),
            width: MediaQuery.of(context).size.width - 10,
            child: const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Pesquise por ondas...'),
            )),
      ),
        body: Center(
          child: ListView.builder(
            itemBuilder: (context, index) {
              bool troca = true;
              return StatefulBuilder(
                  // esse cara q faz a magica funcionar, o StatefulBuilder
                  builder: (context, setState) => GestureDetector(
                      onTap: () {
                        //aqui muda se tá aberto ou n (lá ele)
                        setState(() {
                          troca = !troca;
                        });
                      },
                      child: Center(
                          child: AnimatedContainer(
                        //Container e configurações dele
                        margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20),
                        width: tamanho - 50,
                        height: (troca == false)
                            ? 750
                            : 200, //ajuste de altura[altura quando selecionado : altura padrão]
                        color: const Color.fromARGB(255, 217, 217, 217),
                        duration: const Duration(seconds: 1),
                        curve: Curves.ease,
                        //Texto sobre as praias.
                        child: Stack(
                          children: [
                            Positioned(
                              child: Image.asset(
                                //imagem da praia
                                lOnda[index].imgOnda,
                                width: tamanho - 50,
                                height: 200,
                                fit: (troca == false)
                                    ? BoxFit.cover
                                    : BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 150,
                              left: 10,
                              child: Text(
                                lOnda[index].tipoOnda,
                                style: const TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                            Positioned(
                                top: 200,
                                left: 2,
                                child: Container(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      right: 100,
                                    ),
                                    margin: const EdgeInsets.only(
                                      right: 11,
                                    ),
                                    width: tamanho - 1,
                                    child: (troca == false)
                                        ? Text(
                                            lOnda[index].descOnda,
                                            style: const TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 41, 41, 41)),
                                          )
                                        : const Text('')))
                          ],
                        ),
                      ))));
            },
            itemCount: lOnda.length,
          ),
        ),
      ),
    );
  }
}

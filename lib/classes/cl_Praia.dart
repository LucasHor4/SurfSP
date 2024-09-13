import 'package:flutter/material.dart';

class Praia{
  late int idPraia;
  final String nomePraia;
  final String descPraia;
  late bool troca;
  late String imgPraia;

  Praia( this.idPraia, this.nomePraia, this.descPraia, this.troca, this.imgPraia);

  teste(){
  Praia praia1 =  Praia(1, "Ubatuba");

  // praia teste:
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        body:
                  GestureDetector( // começa aqui
                    onTap: () {
                      setState(() {
                        troca = !troca;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.x

                          margin: const EdgeInsets.only(
                              bottom: 20, //xx
                              top: 20),
                          width: MediaQuery.of(context).size.width - 50,
                          height: selected
                              ? 750
                              : 200, //ajuste de altura ? [altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  imgPraia,
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit: selected ? BoxFit.cover: BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'Teste',
                                  style: TextStyle(
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
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: selected
                                          ? const Text(
                                              'Um destino imperdível para surfistas de todos os níveis é Praia Grande, em Ubatuba. É reconhecido por suas ondas consistentes e acessíveis. É uma excelente área para surfe, principalmente de setembro a fevereiro, quando as ondas são mais suaves e ideais para iniciantes e intermediários.  Além de ser um local popular para o surf, a Praia Grande também é conhecida por sua atmosfera animada e paisagens de tirar o fôlego, o que a torna uma das praias mais populares de Ubatuba. Ideal para exercícios como caminhadas e corridas na areia, é também um ótimo lugar para desfrutar e admirar o sol.', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ))
        );  

                  // fim da praia teste
  }
}
}
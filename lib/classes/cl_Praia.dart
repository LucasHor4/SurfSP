import 'package:flutter/material.dart';

class clPraia {
  final int idPraia;
  late String nomePraia;
  late String descPraia;
  late String imgPraia;

  clPraia(this.idPraia, this.nomePraia, this.descPraia, this.imgPraia);

  teste() {
    // Praia praia1 = Praia(1, "Ubatuba");
    bool troca = false;
    // praia teste
    return GestureDetector(
      // começa aqui
      onTap: () {
        troca = !troca;
      },
      child: Center(
        child: AnimatedContainer(
            //Container e configurações dele.x

            margin: const EdgeInsets.only(
                bottom: 20, //xx
                top: 20),
            height: (troca == false)
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
                    height: 200,
                    fit: (troca == false) ? BoxFit.cover : BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 10,
                  child: Text(
                    nomePraia,
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
                        child: (troca == false)
                            ? Text(
                                descPraia,
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                              )
                            : const Text('')))
              ],
            )),
      ),
    );
  }
}

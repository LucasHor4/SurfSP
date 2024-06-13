import 'package:flutter/material.dart';

void main() {
  runApp(const Praias());
}

class Praias extends StatefulWidget {
  const Praias({super.key});

  @override
  State<Praias> createState() => PraiasState();
}

class PraiasState extends State<Praias> {
  //Declarando variaveis para usar na alternação de ligado e desligado.⬇⬇
  bool selected = false; //esse é um exemplo.
  bool ubatuba = false;
  bool caraguatatuba = false;
  bool ilhabela = false;
  bool ssebastiao = false;
  bool bertioga = false;
  bool guaruja = false;
  bool santos = false;
  bool svicente = false;
  bool praiagrande = false;
  bool mongagua = false;
  bool itanhaem = false;
  bool peruibe = false;
  bool iguape = false;
  bool ilhacomprida = false;
  bool cananeia = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      }, // para alternar entre ligado e deligado. [teste]

      child: Center(
          child: ListView(
        children: [
          //Praia de Ubatuba:
          GestureDetector(
            onTap: () {
              setState(() {
                ubatuba = !ubatuba;
              });
            },
            child: AnimatedContainer(
                //Container e configurações dele.

                margin: const EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 410,
                  right: 410,
                ),
                width: 316,
                height: ubatuba ? 350 : 200,
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
                        fit: ubatuba ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 160,
                      left: 10,
                      child: Text(
                        'Ubatuba',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Positioned(
                        top: 200,
                        left: 2,
                        child: ubatuba
                            ? const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac tristique mi, sed tincidunt nulla. Curabitur ut nisi non risus consequat blandit. In massa velit, condimentum vitae congue id, finibus molestie urna. Ut sit amet commodo neque. In id nulla dapibus, vehicula enim sit amet, auctor mauris. Sed velit tortor, posuere ut bibendum in, tempor sed urna. Maecenas lacus metus, dapibus at accumsan vitae, volutpat sit amet elit. Integer auctor aliquet dui. Phasellus convallis elementum vehicula. Donec bibendum mauris a dui hendrerit, sit amet tempus sapien volutpat.', //Aqui vai o texto sobre a praia.
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                                maxLines: 70, overflow: TextOverflow.visible,
                              )
                            : const Text(''))
                  ],
                )),
          ),

          // Fim da praia.

          //Praia de Caraguatatuba:
          GestureDetector(
            onTap: () {
              setState(() {
                caraguatatuba = !caraguatatuba;
              });
            },
            child: AnimatedContainer(
                //Container e configurações dele.

                margin: const EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 410,
                  right: 410,
                ),
                width: 316,
                height: caraguatatuba ? 350 : 200,
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
                        fit: caraguatatuba ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 160,
                      left: 10,
                      child: Text(
                        'Caraguatatuba',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Positioned(
                        top: 200,
                        left: 2,
                        child: caraguatatuba
                            ? const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac tristique mi, sed tincidunt nulla. Curabitur ut nisi non risus consequat blandit. In massa velit, condimentum vitae congue id, finibus molestie urna. Ut sit amet commodo neque. In id nulla dapibus, vehicula enim sit amet, auctor mauris. Sed velit tortor, posuere ut bibendum in, tempor sed urna. Maecenas lacus metus, dapibus at accumsan vitae, volutpat sit amet elit. Integer auctor aliquet dui. Phasellus convallis elementum vehicula. Donec bibendum mauris a dui hendrerit, sit amet tempus sapien volutpat.', //Aqui vai o texto sobre a praia.
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                                maxLines: 70, overflow: TextOverflow.visible,
                              )
                            : const Text(''))
                  ],
                )),
          ),

          // Fim da praia.

          //Praia de ilhabela:
          GestureDetector(
            onTap: () {
              setState(() {
                ilhabela = !ilhabela;
              });
            },
            child: AnimatedContainer(
                //Container e configurações dele.

                margin: const EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 410,
                  right: 410,
                ),
                width: 316,
                height: ilhabela ? 350 : 200,
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
                        fit: ilhabela ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 160,
                      left: 10,
                      child: Text(
                        'Ilhabela',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Positioned(
                        top: 200,
                        left: 2,
                        child: ilhabela
                            ? const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac tristique mi, sed tincidunt nulla. Curabitur ut nisi non risus consequat blandit. In massa velit, condimentum vitae congue id, finibus molestie urna. Ut sit amet commodo neque. In id nulla dapibus, vehicula enim sit amet, auctor mauris. Sed velit tortor, posuere ut bibendum in, tempor sed urna. Maecenas lacus metus, dapibus at accumsan vitae, volutpat sit amet elit. Integer auctor aliquet dui. Phasellus convallis elementum vehicula. Donec bibendum mauris a dui hendrerit, sit amet tempus sapien volutpat.', //Aqui vai o texto sobre a praia.
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                                maxLines: 70, overflow: TextOverflow.visible,
                              )
                            : const Text(''))
                  ],
                )),
          ),

          // Fim da praia.

          //Praia de ssebastiao:
          GestureDetector(
            onTap: () {
              setState(() {
                ssebastiao = !ssebastiao;
              });
            },
            child: AnimatedContainer(
                //Container e configurações dele.

                margin: const EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 410,
                  right: 410,
                ),
                width: 316,
                height: ssebastiao ? 350 : 200,
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
                        fit: ssebastiao ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 160,
                      left: 10,
                      child: Text(
                        'São sebastião',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Positioned(
                        top: 200,
                        left: 2,
                        child: ssebastiao
                            ? const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac tristique mi, sed tincidunt nulla. Curabitur ut nisi non risus consequat blandit. In massa velit, condimentum vitae congue id, finibus molestie urna. Ut sit amet commodo neque. In id nulla dapibus, vehicula enim sit amet, auctor mauris. Sed velit tortor, posuere ut bibendum in, tempor sed urna. Maecenas lacus metus, dapibus at accumsan vitae, volutpat sit amet elit. Integer auctor aliquet dui. Phasellus convallis elementum vehicula. Donec bibendum mauris a dui hendrerit, sit amet tempus sapien volutpat.', //Aqui vai o texto sobre a praia.
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                                maxLines: 70, overflow: TextOverflow.visible,
                              )
                            : const Text(''))
                  ],
                )),
          ),

          // Fim da praia.

          //Praia de bertioga:
          GestureDetector(
            onTap: () {
              setState(() {
                bertioga = !bertioga;
              });
            },
            child: AnimatedContainer(
                //Container e configurações dele.

                margin: const EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 410,
                  right: 410,
                ),
                width: 316,
                height: bertioga ? 350 : 200,
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
                        fit: bertioga ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 160,
                      left: 10,
                      child: Text(
                        'Bertioga',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Positioned(
                        top: 200,
                        left: 2,
                        child: bertioga
                            ? const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac tristique mi, sed tincidunt nulla. Curabitur ut nisi non risus consequat blandit. In massa velit, condimentum vitae congue id, finibus molestie urna. Ut sit amet commodo neque. In id nulla dapibus, vehicula enim sit amet, auctor mauris. Sed velit tortor, posuere ut bibendum in, tempor sed urna. Maecenas lacus metus, dapibus at accumsan vitae, volutpat sit amet elit. Integer auctor aliquet dui. Phasellus convallis elementum vehicula. Donec bibendum mauris a dui hendrerit, sit amet tempus sapien volutpat.', //Aqui vai o texto sobre a praia.
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                                maxLines: 70, overflow: TextOverflow.visible,
                              )
                            : const Text(''))
                  ],
                )),
          ),

          // Fim da praia.

          //Praia de guaruja:
          GestureDetector(
            onTap: () {
              setState(() {
                guaruja = !guaruja;
              });
            },
            child: AnimatedContainer(
                //Container e configurações dele.

                margin: const EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 410,
                  right: 410,
                ),
                width: 316,
                height: guaruja ? 350 : 200,
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
                        fit: guaruja ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 160,
                      left: 10,
                      child: Text(
                        'Guaruja',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Positioned(
                        top: 200,
                        left: 2,
                        child: guaruja
                            ? const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac tristique mi, sed tincidunt nulla. Curabitur ut nisi non risus consequat blandit. In massa velit, condimentum vitae congue id, finibus molestie urna. Ut sit amet commodo neque. In id nulla dapibus, vehicula enim sit amet, auctor mauris. Sed velit tortor, posuere ut bibendum in, tempor sed urna. Maecenas lacus metus, dapibus at accumsan vitae, volutpat sit amet elit. Integer auctor aliquet dui. Phasellus convallis elementum vehicula. Donec bibendum mauris a dui hendrerit, sit amet tempus sapien volutpat.', //Aqui vai o texto sobre a praia.
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                                maxLines: 70, overflow: TextOverflow.visible,
                              )
                            : const Text(''))
                  ],
                )),
          ),

          // Fim da praia.

          //Praia de santos:
          GestureDetector(
            onTap: () {
              setState(() {
                santos = !santos;
              });
            },
            child: AnimatedContainer(
                //Container e configurações dele.

                margin: const EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 410,
                  right: 410,
                ),
                width: 316,
                height: santos ? 350 : 200,
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
                        fit: santos ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 160,
                      left: 10,
                      child: Text(
                        'Santos',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Positioned(
                        top: 200,
                        left: 2,
                        child: santos
                            ? const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac tristique mi, sed tincidunt nulla. Curabitur ut nisi non risus consequat blandit. In massa velit, condimentum vitae congue id, finibus molestie urna. Ut sit amet commodo neque. In id nulla dapibus, vehicula enim sit amet, auctor mauris. Sed velit tortor, posuere ut bibendum in, tempor sed urna. Maecenas lacus metus, dapibus at accumsan vitae, volutpat sit amet elit. Integer auctor aliquet dui. Phasellus convallis elementum vehicula. Donec bibendum mauris a dui hendrerit, sit amet tempus sapien volutpat.', //Aqui vai o texto sobre a praia.
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                                maxLines: 70, overflow: TextOverflow.visible,
                              )
                            : const Text(''))
                  ],
                )),
          ),

          // Fim da praia.

          //Praia de svicente:
          GestureDetector(
            onTap: () {
              setState(() {
                svicente = !svicente;
              });
            },
            child: AnimatedContainer(
                //Container e configurações dele.

                margin: const EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 410,
                  right: 410,
                ),
                width: 316,
                height: svicente ? 350 : 200,
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
                        fit: svicente ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 160,
                      left: 10,
                      child: Text(
                        'São Vicente',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Positioned(
                        top: 200,
                        left: 2,
                        child: svicente
                            ? const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac tristique mi, sed tincidunt nulla. Curabitur ut nisi non risus consequat blandit. In massa velit, condimentum vitae congue id, finibus molestie urna. Ut sit amet commodo neque. In id nulla dapibus, vehicula enim sit amet, auctor mauris. Sed velit tortor, posuere ut bibendum in, tempor sed urna. Maecenas lacus metus, dapibus at accumsan vitae, volutpat sit amet elit. Integer auctor aliquet dui. Phasellus convallis elementum vehicula. Donec bibendum mauris a dui hendrerit, sit amet tempus sapien volutpat.', //Aqui vai o texto sobre a praia.
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                                maxLines: 70, overflow: TextOverflow.visible,
                              )
                            : const Text(''))
                  ],
                )),
          ),

          // Fim da praia.

          //Praia de praiagrande:
          GestureDetector(
            onTap: () {
              setState(() {
                praiagrande = !praiagrande;
              });
            },
            child: AnimatedContainer(
                //Container e configurações dele.

                margin: const EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 410,
                  right: 410,
                ),
                width: 316,
                height: praiagrande ? 350 : 200,
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
                        fit: praiagrande ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 160,
                      left: 10,
                      child: Text(
                        'Praia Grande',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Positioned(
                        top: 200,
                        left: 2,
                        child: praiagrande
                            ? const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac tristique mi, sed tincidunt nulla. Curabitur ut nisi non risus consequat blandit. In massa velit, condimentum vitae congue id, finibus molestie urna. Ut sit amet commodo neque. In id nulla dapibus, vehicula enim sit amet, auctor mauris. Sed velit tortor, posuere ut bibendum in, tempor sed urna. Maecenas lacus metus, dapibus at accumsan vitae, volutpat sit amet elit. Integer auctor aliquet dui. Phasellus convallis elementum vehicula. Donec bibendum mauris a dui hendrerit, sit amet tempus sapien volutpat.', //Aqui vai o texto sobre a praia.
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                                maxLines: 70, overflow: TextOverflow.visible,
                              )
                            : const Text(''))
                  ],
                )),
          ),

          // Fim da praia.

          //Praia de mongagua:
          GestureDetector(
            onTap: () {
              setState(() {
                mongagua = !mongagua;
              });
            },
            child: AnimatedContainer(
                //Container e configurações dele.

                margin: const EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 410,
                  right: 410,
                ),
                width: 316,
                height: mongagua ? 350 : 200,
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
                        fit: mongagua ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 160,
                      left: 10,
                      child: Text(
                        'Mongagua',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Positioned(
                        top: 200,
                        left: 2,
                        child: mongagua
                            ? const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac tristique mi, sed tincidunt nulla. Curabitur ut nisi non risus consequat blandit. In massa velit, condimentum vitae congue id, finibus molestie urna. Ut sit amet commodo neque. In id nulla dapibus, vehicula enim sit amet, auctor mauris. Sed velit tortor, posuere ut bibendum in, tempor sed urna. Maecenas lacus metus, dapibus at accumsan vitae, volutpat sit amet elit. Integer auctor aliquet dui. Phasellus convallis elementum vehicula. Donec bibendum mauris a dui hendrerit, sit amet tempus sapien volutpat.', //Aqui vai o texto sobre a praia.
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                                maxLines: 70, overflow: TextOverflow.visible,
                              )
                            : const Text(''))
                  ],
                )),
          ),

          // Fim da praia.

          //Praia de itanhaem:
          GestureDetector(
            onTap: () {
              setState(() {
                itanhaem = !itanhaem;
              });
            },
            child: AnimatedContainer(
                //Container e configurações dele.

                margin: const EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 410,
                  right: 410,
                ),
                width: 316,
                height: itanhaem ? 350 : 200,
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
                        fit: itanhaem ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 160,
                      left: 10,
                      child: Text(
                        'Itanhaem',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Positioned(
                        top: 200,
                        left: 2,
                        child: itanhaem
                            ? const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac tristique mi, sed tincidunt nulla. Curabitur ut nisi non risus consequat blandit. In massa velit, condimentum vitae congue id, finibus molestie urna. Ut sit amet commodo neque. In id nulla dapibus, vehicula enim sit amet, auctor mauris. Sed velit tortor, posuere ut bibendum in, tempor sed urna. Maecenas lacus metus, dapibus at accumsan vitae, volutpat sit amet elit. Integer auctor aliquet dui. Phasellus convallis elementum vehicula. Donec bibendum mauris a dui hendrerit, sit amet tempus sapien volutpat.', //Aqui vai o texto sobre a praia.
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                                maxLines: 70, overflow: TextOverflow.visible,
                              )
                            : const Text(''))
                  ],
                )),
          ),

          // Fim da praia.

          //Praia de peruibe:
          GestureDetector(
            onTap: () {
              setState(() {
                peruibe = !peruibe;
              });
            },
            child: AnimatedContainer(
                //Container e configurações dele.

                margin: const EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 410,
                  right: 410,
                ),
                width: 316,
                height: peruibe ? 350 : 200,
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
                        fit: peruibe ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 160,
                      left: 10,
                      child: Text(
                        'Ubatuba',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Positioned(
                        top: 200,
                        left: 2,
                        child: peruibe
                            ? const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac tristique mi, sed tincidunt nulla. Curabitur ut nisi non risus consequat blandit. In massa velit, condimentum vitae congue id, finibus molestie urna. Ut sit amet commodo neque. In id nulla dapibus, vehicula enim sit amet, auctor mauris. Sed velit tortor, posuere ut bibendum in, tempor sed urna. Maecenas lacus metus, dapibus at accumsan vitae, volutpat sit amet elit. Integer auctor aliquet dui. Phasellus convallis elementum vehicula. Donec bibendum mauris a dui hendrerit, sit amet tempus sapien volutpat.', //Aqui vai o texto sobre a praia.
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                                maxLines: 70, overflow: TextOverflow.visible,
                              )
                            : const Text(''))
                  ],
                )),
          ),

          // Fim da praia.

          //Praia de iguape:
          GestureDetector(
            onTap: () {
              setState(() {
                iguape = !iguape;
              });
            },
            child: AnimatedContainer(
                //Container e configurações dele.

                margin: const EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 410,
                  right: 410,
                ),
                width: 316,
                height: iguape ? 350 : 200,
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
                        fit: iguape ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 160,
                      left: 10,
                      child: Text(
                        'Iguape',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Positioned(
                        top: 200,
                        left: 2,
                        child: iguape
                            ? const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac tristique mi, sed tincidunt nulla. Curabitur ut nisi non risus consequat blandit. In massa velit, condimentum vitae congue id, finibus molestie urna. Ut sit amet commodo neque. In id nulla dapibus, vehicula enim sit amet, auctor mauris. Sed velit tortor, posuere ut bibendum in, tempor sed urna. Maecenas lacus metus, dapibus at accumsan vitae, volutpat sit amet elit. Integer auctor aliquet dui. Phasellus convallis elementum vehicula. Donec bibendum mauris a dui hendrerit, sit amet tempus sapien volutpat.', //Aqui vai o texto sobre a praia.
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                                maxLines: 70, overflow: TextOverflow.visible,
                              )
                            : const Text(''))
                  ],
                )),
          ),

          // Fim da praia.

          //Praia de ilhacomprida:
          GestureDetector(
            onTap: () {
              setState(() {
                ilhacomprida = !ilhacomprida;
              });
            },
            child: AnimatedContainer(
                //Container e configurações dele.

                margin: const EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 410,
                  right: 410,
                ),
                width: 316,
                height: ilhacomprida ? 350 : 200,
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
                        fit: ilhacomprida ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 160,
                      left: 10,
                      child: Text(
                        'Ilha Comprida',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Positioned(
                        top: 200,
                        left: 2,
                        child: ilhacomprida
                            ? const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac tristique mi, sed tincidunt nulla. Curabitur ut nisi non risus consequat blandit. In massa velit, condimentum vitae congue id, finibus molestie urna. Ut sit amet commodo neque. In id nulla dapibus, vehicula enim sit amet, auctor mauris. Sed velit tortor, posuere ut bibendum in, tempor sed urna. Maecenas lacus metus, dapibus at accumsan vitae, volutpat sit amet elit. Integer auctor aliquet dui. Phasellus convallis elementum vehicula. Donec bibendum mauris a dui hendrerit, sit amet tempus sapien volutpat.', //Aqui vai o texto sobre a praia.
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                                maxLines: 70, overflow: TextOverflow.visible,
                              )
                            : const Text(''))
                  ],
                )),
          ),

          // Fim da praia.

          //Praia de cananeia:
          GestureDetector(
            onTap: () {
              setState(() {
                cananeia = !cananeia;
              });
            },
            child: AnimatedContainer(
                //Container e configurações dele.

                margin: const EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 410,
                  right: 410,
                ),
                width: 316,
                height: cananeia ? 350 : 200,
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
                        fit: cananeia ? BoxFit.cover : BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 160,
                      left: 10,
                      child: Text(
                        'Cananeia',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Positioned(
                        top: 200,
                        left: 2,
                        child: cananeia
                            ? const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac tristique mi, sed tincidunt nulla. Curabitur ut nisi non risus consequat blandit. In massa velit, condimentum vitae congue id, finibus molestie urna. Ut sit amet commodo neque. In id nulla dapibus, vehicula enim sit amet, auctor mauris. Sed velit tortor, posuere ut bibendum in, tempor sed urna. Maecenas lacus metus, dapibus at accumsan vitae, volutpat sit amet elit. Integer auctor aliquet dui. Phasellus convallis elementum vehicula. Donec bibendum mauris a dui hendrerit, sit amet tempus sapien volutpat.', //Aqui vai o texto sobre a praia.
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 41, 41, 41)),
                                maxLines: 70, overflow: TextOverflow.visible,
                              )
                            : const Text(''))
                  ],
                )),
          ),

          // Fim da praia.
        ],
      )),
    ));
  }
}
